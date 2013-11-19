class Message < ActiveRecord::Base
  def shorten
    self.content = self.content[0..120]
  end

  def remove_profanity
    ['bad word', 'another bad word','and another' ].each do |profanity|
      self.content.gsub!("#{profanity}", "")
    end
  end

  def add_smiles
    self.content << ":)"
  end
end
