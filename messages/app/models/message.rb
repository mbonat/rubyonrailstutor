class Message < ActiveRecord::Base
  def shorten!
    self.content = self.content[0..119]
  end

  def remove_profanity
    ['bad word', 'another bad word','and another' ].each do |profanity|
      self.content.gsub!("#{profanity}", "")
    end
  end

  def add_smiles
    return if content.empty?
    self.content << ":)"
  end
end
