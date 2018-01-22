{-# LANGUAGE OverloadedStrings #-}

module Resources.Navigation where

import Foundation

-- Define the menu items of the header.

menuItems :: [MenuTypes]
menuItems = [NavbarLeft $ MenuItem
             { menuItemLabel = "Blog"
             , menuItemRoute = BlogR
             , menuItemAccessCallback = True
             },
             NavbarLeft $ MenuItem
             { menuItemLabel = "About"
             , menuItemRoute = AboutR
             , menuItemAccessCallback = True
             },
             NavbarLeft $ MenuItem
             { menuItemLabel = "Contact"
             , menuItemRoute = ContactR
             , menuItemAccessCallback = True
             }
             ]

navbarLeftMenuItems :: [MenuItem]
navbarLeftMenuItems = [x | NavbarLeft x <- menuItems]

navbarRightMenuItems :: [MenuItem]
navbarRightMenuItems = [x | NavbarRight x <- menuItems]



navbarLeftFilteredMenuItems :: [MenuItem]
navbarLeftFilteredMenuItems = [x | x <- navbarLeftMenuItems, menuItemAccessCallback x]

navbarRightFilteredMenuItems :: [MenuItem]
navbarRightFilteredMenuItems = [x | x <- navbarRightMenuItems, menuItemAccessCallback x]



