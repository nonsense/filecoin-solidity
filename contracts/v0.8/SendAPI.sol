/*******************************************************************************
 *   (c) 2022 Zondax AG
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 ********************************************************************************/
//
// DRAFT!! THIS CODE HAS NOT BEEN AUDITED - USE ONLY FOR PROTOTYPING

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

import "./utils/Misc.sol";
import "./utils/Actor.sol";

/// @title This library is helper method to send funds to some specific address. Calling one of its methods will result in a cross-actor call being performed.
/// @author Zondax AG
library SendAPI {
    /// @notice send token to a specific actor
    /// @param receiverActorId The id address (uint64) you want to send funds to
    /// @param value tokens to be transferred to the receiver
    function send(uint64 receiverActorId, uint256 value) internal {
        bytes memory result = Actor.callByID(receiverActorId, 0, Misc.NONE_CODEC, new bytes(0), value, false);

        require(result.length == 0, Actor.UNEXPECTED_RESPONSE_MESSAGE);
    }

    /// @notice send token to a specific actor
    /// @param addr The address (bytes format) you want to send funds to
    /// @param value tokens to be transferred to the receiver
    function send(bytes memory addr, uint256 value) internal {
        bytes memory result = Actor.callByAddress(addr, 0, Misc.NONE_CODEC, new bytes(0), value, false);

        require(result.length == 0, Actor.UNEXPECTED_RESPONSE_MESSAGE);
    }
}
