cask 'psi-plus' do
  version '0.16.545.538,2016-04-26'
  sha256 '137730bba82e4050f45f6d7d3c06ebd2e183eb23b30df93d35bb5d1563fae79d'

  # downloads.sourceforge.net/psiplus/Mac-OS-X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Mac-OS-X/psi-plus-#{version.before_comma}-qt4-git-#{version.after_comma}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss',
          checkpoint: '22573d836097cfb2102b662a94c395a8e40ec64d95c9d076de180c2d9eb691d0'
  name 'Psi+'
  homepage 'http://psi-plus.com/'

  app 'Psi+.app'

  uninstall quit: 'com.googlecode.psi-dev'

  zap delete: [
                '~/Library/Saved Application State/com.googlecode.psi-dev.savedState',
                '~/Library/Caches/Psi+',
                '~/Library/Application Support/Psi+',
              ]
end
