import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI-Powered Geospatial Monitoring Proposal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ProposalPage(),
    );
  }
}

class ProposalPage extends StatelessWidget {
  const ProposalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI-Powered Geospatial Monitoring System Proposal'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Executive Summary',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'The AI-Powered Geospatial Monitoring and Planning System represents a transformative approach to power transmission management, leveraging advanced artificial intelligence and geospatial technologies to proactively safeguard the grid. By automating the detection of critical risks such as vegetation encroachment, land-use changes, environmental threats, and infrastructure faults, the system prevents outages, ensures regulatory compliance, and significantly reduces operational costs. This comprehensive solution integrates satellite imagery, LiDAR data, weather APIs, and predictive analytics to deliver actionable insights, enabling data-driven decision-making for grid expansion and maintenance. Implementation of this system will position the company as a leader in modern, resilient power infrastructure, avoiding billions in potential losses from wildfires, regulatory fines, and unplanned outages.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Text(
              'Technical Solution per Module',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            _buildModuleSection(
              'Vegetation & Encroachment Management',
              'Data Sources: Satellite Imagery, UAV Drone Footage, LiDAR Point Clouds\n\nCore Technology: Computer Vision Algorithms, Deep Learning Models for Image Segmentation\n\nKey Outputs: Priority work orders for vegetation trimming, Alerts for new structural encroachments, Compliance violation reports',
            ),
            _buildModuleSection(
              'Land-Use Change Tracking',
              'Data Sources: Multi-temporal Satellite Imagery, GIS Databases, Land Registry Data\n\nCore Technology: Change Detection Algorithms, Machine Learning Classification Models\n\nKey Outputs: Land-use change alerts, Right-of-way access impact assessments, Hazard identification maps',
            ),
            _buildModuleSection(
              'Proactive Environmental Threat Assessment',
              'Data Sources: Weather APIs, Satellite Weather Imagery, Historical Climate Data\n\nCore Technology: Predictive Analytics, Machine Learning Forecasting Models\n\nKey Outputs: Wildfire risk heatmaps, Flood zone alerts, High-wind impact predictions',
            ),
            _buildModuleSection(
              'Predictive Infrastructure Fault Detection',
              'Data Sources: High-Resolution Aerial Imagery, Thermal Imaging, IoT Sensor Data\n\nCore Technology: Computer Vision, Anomaly Detection Algorithms, Deep Learning for Pattern Recognition\n\nKey Outputs: Fault prediction alerts, Maintenance priority schedules, Structural health reports',
            ),
            _buildModuleSection(
              'Strategic Expansion Planning',
              'Data Sources: GIS Terrain Data, Environmental Impact Databases, Energy Demand Models\n\nCore Technology: Optimization Algorithms, Spatial Analysis Tools, Predictive Modeling\n\nKey Outputs: Optimal site recommendations, Efficient route planning maps, Capacity expansion forecasts',
            ),
            const SizedBox(height: 20),
            Text(
              'Quantifiable Benefits & ROI',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Vegetation & Encroachment Management: Reducing wildfire ignition risk by 40% through proactive vegetation management, avoiding an estimated \$50 million annually in fire-related damages.\n\nLand-Use Change Tracking: Decreasing regulatory compliance violations by 60%, avoiding \$30 million in fines and penalties.\n\nProactive Environmental Threat Assessment: Improving grid resilience by 35%, reducing SAIDI/SAIFI metrics by 25% via early threat mitigation.\n\nPredictive Infrastructure Fault Detection: Decreasing unplanned outages by 45%, saving \$75 million in emergency repairs and lost revenue.\n\nStrategic Expansion Planning: Optimizing grid expansion costs by 30%, delivering \$100 million in efficiency gains over 5 years.\n\nOverall ROI: 300% return on investment within 3 years through cost savings, compliance improvements, and operational efficiencies.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Text(
              'Phased Implementation Roadmap',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Phase 1 (Months 1-6): Vegetation & Encroachment Management - Deploy computer vision models for initial risk detection, establish baseline monitoring.\n\nPhase 2 (Months 7-12): Land-Use Change Tracking and Environmental Threat Assessment - Integrate weather data and GIS systems for comprehensive threat analysis.\n\nPhase 3 (Months 13-18): Predictive Infrastructure Fault Detection - Implement advanced imagery analysis for proactive maintenance scheduling.\n\nPhase 4 (Months 19-24): Strategic Expansion Planning - Roll out optimization tools for grid expansion projects.\n\nPhase 5 (Ongoing): Full Integration and Optimization - Continuous AI model training and system enhancements based on real-world data.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            Text(
              'Conclusion',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'In an era of increasing environmental challenges and regulatory scrutiny, the AI-Powered Geospatial Monitoring and Planning System is not merely an upgrade—it is essential for maintaining a modern, resilient power grid. By investing in this transformative technology today, your company will prevent catastrophic outages, ensure compliance with evolving standards, and achieve unprecedented operational efficiencies. We urge immediate action to begin the implementation process, securing the future reliability and safety of the national power transmission infrastructure. Contact us to initiate the next steps toward a smarter, safer grid.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildModuleSection(String title, String content) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            content,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
        ],
      ),
    );
  }
}
