//
//  DanaPacketBase.swift
//  DanaKit
//
//  Created by Bastiaan Verhaar on 10/12/2023.
//  Copyright © 2023 Randall Knutson. All rights reserved.
//

struct DanaGeneratePacket {
    let type: UInt8? = nil
    let opCode: UInt8
    let data: Data?
}

protocol DanaParsePacketProtocol {
    var success: Bool { get }
    var command: UInt16? { get set }
    var notifyType: UInt16? { get set }
    associatedtype PayloadType
    var data: PayloadType? { get }
}

struct DanaParsePacket<T>: DanaParsePacketProtocol {
    let success: Bool
    var command: UInt16? = nil
    var notifyType: UInt16? = nil
    let data: T?
}

let TypeIndex = 0;
let OpCodeIndex = 1;
let DataStart = 2;
