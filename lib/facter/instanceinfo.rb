# Hackish way to describe a node based on hostname fields
#
shortname = `hostname`.split('.')[0].split('-')
case shortname.length
when 3
  Facter.add(:instance_environment) do
    setcode do
      shortname[0]
    end
  end

  Facter.add(:instance_role) do
    setcode do
      shortname[1]
    end
  end

  Facter.add(:instance_sequence) do
    setcode do
      shortname[2]
    end
  end

when 4
  Facter.add(:instance_product) do
    setcode do
      shortname[0]
    end
  end

  Facter.add(:instance_environment) do
    setcode do
      shortname[1]
    end
  end

  Facter.add(:instance_role) do
    setcode do
      shortname[2]
    end
  end

  Facter.add(:instance_sequence) do
    setcode do
      shortname[3]
    end
  end

when 5
  Facter.add(:instance_product) do
    setcode do
      shortname[0]
    end
  end

  Facter.add(:instance_environment) do
    setcode do
      shortname[1]
    end
  end

  Facter.add(:instance_role) do
    setcode do
      shortname[2]
    end
  end

  Facter.add(:instance_pregion) do
    setcode do
      shortname[3]
    end
  end

  Facter.add(:instance_sequence) do
    setcode do
      shortname[4]
    end
  end
end

