// SPDX-License-Identifier: GPL-3.0-or-later
// Copyright (C) 2026 Vorssaint

import Foundation

/// Reads Antigravity transcript lines.
struct AntigravityReader: AgentHarnessReader {
    var provider: AgentProvider { .antigravity }

    func parse(_ line: Data, state: inout AgentLogState, now: Date) -> [AgentLogEntry] {
        AgentLogParser.parseAntigravity(line, state: &state, now: now)
    }
}
