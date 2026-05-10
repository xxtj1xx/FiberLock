// FiberLock NOC Service - Realistic API stubs based on 2026 telecom research (RFOptic REST, Nokia T-API, EXFO RFTS)

import 'package:http/http.dart' as http;
import 'dart:convert';

class NocService {
  static const String baseUrl = 'https://mock-noc.fiberlock.app/api'; // Replace with real telecom NOC endpoint

  // Simulate NOC login for enclosure (auto on QR scan)
  Future<Map<String, dynamic>> loginToNoc(String enclosureId, String techId, String companyId) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'enclosure_id': enclosureId,
        'tech_id': techId,
        'company': companyId,
      }),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Returns session token, case data
    }
    throw Exception('NOC login failed');
  }

  // Get job-specific spares list
  Future<List<String>> getSpares(String enclosureId) async {
    final response = await http.get(Uri.parse('$baseUrl/enclosures/$enclosureId/spares'));
    return List<String>.from(jsonDecode(response.body)['spares']);
  }

  // Request spare / engineering (e.g., lit fiber)
  Future<void> requestEngineering(String enclosureId, String issueType, String details) async {
    await http.post(
      Uri.parse('$baseUrl/issues'),
      body: jsonEncode({
        'enclosure_id': enclosureId,
        'type': issueType, // 'lit_fiber' or 'distance_troubleshoot'
        'details': details,
      }),
    );
  }
}
