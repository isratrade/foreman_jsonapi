class HostManagedSerializer < HostBaseSerializer

  def cpus
    object.facts_hash['processorcount']
  end

  def memory_human_size
    object.facts_hash['memorysize']
  end

  def disk_count
    # TODO - what is fact for disk count of managed houst??
  end

  def disks_human_size
    object.facts_hash['blockdevice_vda_size']
  end

end
