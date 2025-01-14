module Test.Golden.Cardano.Api.Ledger
  ( test_golden_ShelleyGenesis
  ) where

import           Test.Cardano.Ledger.Core.Arbitrary ()

import qualified Hedgehog.Extras.Aeson as H
import           Test.Golden.Cardano.Api.Genesis (exampleShelleyGenesis)
import           Test.Tasty (TestTree)
import           Test.Tasty.Hedgehog (testPropertyNamed)

test_golden_ShelleyGenesis :: TestTree
test_golden_ShelleyGenesis = testPropertyNamed "golden ShelleyGenesis"  "golden ShelleyGenesis" $
  H.goldenTestJsonValuePretty exampleShelleyGenesis "test/cardano-api-golden/files/golden/ShelleyGenesis"
