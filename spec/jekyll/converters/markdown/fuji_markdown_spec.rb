RSpec.describe Jekyll::Converters::Markdown::FujiMarkdown do
  subject { described_class.new(config) }

  let(:config) { {} }

  describe '#convert' do
    let(:content) { 'content' }

    it 'calls parser.render' do
      parser = spy('parser')

      subject.convert(content, parser: parser)

      expect(parser).to have_received(:render).with(content)
    end
  end
end
