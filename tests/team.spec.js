/* eslint-disable @typescript-eslint/explicit-function-return-type */
import { expect } from "chai"
import { beforeEach, describe, it, before } from "mocha"
import { Asset, Name, TimePoint } from "@greymass/eosio"
import { Blockchain, nameToBigInt, symbolCodeToBigInt, protonAssert, expectToThrow, nameTypeToBigInt } from "@proton/vert"
import { chain, accounts, addRounds, currentRound, depositTokens, setupAccountOwner, defaultConfig, contract, stakes, token, roundStartTime, init, teams, decayPower, totalPayout, teamContribution, teamOwnerCut, act, boid_id, validateGlobals } from "./util.js"
afterEach(() => {
  expect(validateGlobals()).eq(true)
})
describe("team", () => {
  it("create", async() => {
    await init()
    await act("team.create", { owner: "boid", min_pwr_tax_mult: 100, owner_cut_mult: 100, url_safe_name: "blu-team", info_json_ipfs: "" })
    expect(teams()[1].url_safe_name).eq("blu-team")
  })
  it("edit", async() => {
    addRounds(10)
    await act("team.edit", { team_id: 1, owner: "boid", managers: [boid_id], min_pwr_tax_mult: 200, owner_cut_mult: 200, url_safe_name: "charity", info_json_ipfs: "" })
    expect(teams()[1].min_pwr_tax_mult).eq(200)
    await expectToThrow(
      act("team.edit", { team_id: 1, owner: "boid", managers: [boid_id], min_pwr_tax_mult: 200, owner_cut_mult: 200, url_safe_name: "charity", info_json_ipfs: "" }),
      "eosio_assert: edited team too frequently")
  })
  it("change", async() => {
    addRounds(2)
    const error = "eosio_assert: new_pwr_tax_mult must be equal or greater than the team minimum: " + teams()[1].min_pwr_tax_mult
    await expectToThrow(act("team.change", { boid_id, new_team_id: 1, new_pwr_tax_mult: 0 }), error)
    await act("team.change", { boid_id, new_team_id: 1, new_pwr_tax_mult: 200 })
    addRounds(2)
    await expectToThrow(act("team.change", { boid_id, new_team_id: 1, new_pwr_tax_mult: 200 }), "eosio_assert: already a member of this team")
    addRounds(2)
    await expectToThrow(act("team.change", { boid_id, new_team_id: 0, new_pwr_tax_mult: 200 }), "eosio_assert: changed teams/tax_mult too frequently")
    addRounds(42)
    await act("team.change", { boid_id, new_team_id: 0, new_pwr_tax_mult: 200 })
    // console.log(chain.console)
  })
})
