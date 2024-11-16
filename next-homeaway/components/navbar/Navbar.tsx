
import NavSearch from './NavSearch';
import LinksDropdown from './LinksDropdown';
import { ModeToggle as DarkMode } from './DarkMode';
import Logo from './Logo';


function Navbar() {
  return (
    <nav className="border-b">
      <div className='container flex flex-col sm:flex-row sm:justify-between sm:items-center
      flex-wrap gap-4 py-8'>
        <Logo />
        <NavSearch />
        <div className='flex gap-4 items-center'>
          <DarkMode />
          <LinksDropdown />
        </div>
      </div>
    </nav>
    // <div>Navbar</div>
  )
}

export default Navbar;