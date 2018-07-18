#
# cpe_identification.rb
# 
# A simple "Common Platform Enumeration" parser against
# MITE's CPE standard <http://cpe.mitre.org/>
#
# An example from a recent EC2 AMI
# cpe:/o:amazon:linux:2012.03:ga

if Facter.value(:kernel) == 'Linux'

  cpe_filename = "/etc/system-release-cpe"

  if File.exist?(cpe_filename) then
    cpe = File.open(cpe_filename)

      cpe.each_line do |line|
      fields = line.split(":")

      if fields[0] =~ /cpe/ && fields[1] =~ /\/o/
        Facter.add("cpe_vendor") do
          setcode { fields[2] }
        end

        Facter.add("cpe_product") do
          setcode { fields[3] }
        end

        Facter.add("cpe_version") do
          setcode { fields[4] }
        end

        Facter.add("cpe_update") do
          setcode { fields[5] }
        end
      end
    end
  end
end
