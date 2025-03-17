/*
 * @file Theme configuration
 */
import { defineConfig } from './src/helpers/config-helper';

export default defineConfig({
  lang: 'en-US',
  site: 'https://slate-blog-demo.vercel.app',
  avatar: '/avatar.png',
  title: 'Bryce McWhirter Blog',
  description: 'A blog by Bryce McWhirter',
  lastModified: true,
  readTime: true,
  footer: {
    copyright: '© 2025 Slate Design',
  },
  socialLinks: [
    {
      icon: 'github',
      link: 'https://www.github.com/brycemcwhirter',
    },
    {
      icon: 'mail',
      link: 'mailto:mcwhirterbryce@icloud.com',
    },
    {
      icon: 'mail',
      link: 'https://www.linkedin.com/in/bryce-mcwhirter-5b9330146/',
    },
  ],
});
