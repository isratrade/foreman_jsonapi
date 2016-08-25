class HostDiscoveredSerializer < HostBaseSerializer
  include ActionView::Helpers::NumberHelper

  def cpus
    object.cpu_count
  end

  def memory_human_size
    return "0 MB" if object.memory.blank? || object.memory.to_i == 0
    number_to_human_size(object.memory.to_i * 1024 * 1024)
  end

  def disk_count
    object.disk_count
  end

  def disks_human_size
    return "0 MB" if object.disks_size.blank? || object.disks_size.to_i == 0
  end

  def subnet_to_s
    ""
  end

end
