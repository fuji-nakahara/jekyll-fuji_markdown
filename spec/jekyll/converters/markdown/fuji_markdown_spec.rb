RSpec.describe Jekyll::Converters::Markdown::FujiMarkdown do
  let(:converter) { described_class.new(config) }

  let(:config) { {} }

  describe '#convert' do
    subject { converter.convert(content, parser: parser) }

    let(:parser) { spy('parser') }
    let(:content) { 'content' }

    context 'without options' do
      it 'calls parser.render with :HTML option' do
        subject

        expect(parser).to have_received(:render).with(content)
      end
    end

    context 'with option `output: kakuyomu`' do
      let(:config) do
        {
          'FujiMarkdown' => {
            'output' => 'kakuyomu'
          }
        }
      end

      it 'calls parser.render with :KAKUYOMU option' do
        subject

        expect(parser).to have_received(:render).with(content, :KAKUYOMU)
      end
    end
  end
end
