{ fetchurl, fetchgit, linkFarm, runCommand, gnutar }: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [
    {
      name = "https___registry.npmjs.org__chevrotain_cst_dts_gen___cst_dts_gen_11.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__chevrotain_cst_dts_gen___cst_dts_gen_11.0.3.tgz";
        url  = "https://registry.npmjs.org/@chevrotain/cst-dts-gen/-/cst-dts-gen-11.0.3.tgz";
        sha512 = "BvIKpRLeS/8UbfxXxgC33xOumsacaeCKAjAeLyOn7Pcp95HiRbrpl14S+9vaZLolnbssPIUuiUd8IvgkRyt6NQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__chevrotain_gast___gast_11.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__chevrotain_gast___gast_11.0.3.tgz";
        url  = "https://registry.npmjs.org/@chevrotain/gast/-/gast-11.0.3.tgz";
        sha512 = "+qNfcoNk70PyS/uxmj3li5NiECO+2YKZZQMbmjTqRI3Qchu8Hig/Q9vgkHpI3alNjr7M+a2St5pw5w5F6NL5/Q==";
      };
    }
    {
      name = "https___registry.npmjs.org__chevrotain_regexp_to_ast___regexp_to_ast_11.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__chevrotain_regexp_to_ast___regexp_to_ast_11.0.3.tgz";
        url  = "https://registry.npmjs.org/@chevrotain/regexp-to-ast/-/regexp-to-ast-11.0.3.tgz";
        sha512 = "1fMHaBZxLFvWI067AVbGJav1eRY7N8DDvYCTwGBiE/ytKBgP8azTdgyrKyWZ9Mfh09eHWb5PgTSO8wi7U824RA==";
      };
    }
    {
      name = "https___registry.npmjs.org__chevrotain_types___types_11.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__chevrotain_types___types_11.0.3.tgz";
        url  = "https://registry.npmjs.org/@chevrotain/types/-/types-11.0.3.tgz";
        sha512 = "gsiM3G8b58kZC2HaWR50gu6Y1440cHiJ+i3JUvcp/35JchYejb2+5MVeJK0iKThYpAa/P2PYFV4hoi44HD+aHQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__chevrotain_utils___utils_11.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__chevrotain_utils___utils_11.0.3.tgz";
        url  = "https://registry.npmjs.org/@chevrotain/utils/-/utils-11.0.3.tgz";
        sha512 = "YslZMgtJUyuMbZ+aKvfF3x1f5liK4mWNxghFRv7jqRR9C3R3fAOGTTKvxXDa2Y1s9zSbcpuO0cAxDYsc9SrXoQ==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_darwin_aarch64___bun_darwin_aarch64_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_darwin_aarch64___bun_darwin_aarch64_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-darwin-aarch64/-/bun-darwin-aarch64-1.2.5.tgz";
        sha512 = "ggZfdpgUJ/OiWrfcfTgHeSTHcec5HAjkGrZHL9FJ/R60sydRKPYHgAgexdIoJAGfsCVAL+x7y8NSTRIAX8J4Ng==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_darwin_x64___bun_darwin_x64_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_darwin_x64___bun_darwin_x64_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-darwin-x64/-/bun-darwin-x64-1.2.5.tgz";
        sha512 = "4zqyQLJB33s99KcTxH6yQqH5EYBmF1qofQTtLsToIFbIZN1NqSp/aegYiGmxO5Kj/BuWsy8Wf8MS6vX2O0o2Lw==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_darwin_x64_baseline___bun_darwin_x64_baseline_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_darwin_x64_baseline___bun_darwin_x64_baseline_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-darwin-x64-baseline/-/bun-darwin-x64-baseline-1.2.5.tgz";
        sha512 = "3W1RO3/D6Z1S79J47F/DLzmK+dgkYq5hS1ShOCSBAYTTA2b1ZuymaN8avGzSb9ed5W0QfxtyeAksfEY2xUBOqA==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_linux_aarch64___bun_linux_aarch64_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_linux_aarch64___bun_linux_aarch64_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-linux-aarch64/-/bun-linux-aarch64-1.2.5.tgz";
        sha512 = "NQFtAVyQyJhLYrhFVxKdh6cqrDNc60pBnBGLQSO8PU+oyFyiJ3e3gGXjLzMbxd6cJxNIK5FZ0JIq96WljKAhlg==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_linux_aarch64_musl___bun_linux_aarch64_musl_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_linux_aarch64_musl___bun_linux_aarch64_musl_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-linux-aarch64-musl/-/bun-linux-aarch64-musl-1.2.5.tgz";
        sha512 = "URlISBOE2HQi8qdru691OYywJRwChxMfXFbk26tCgdZ01LgGAKsIjAYylefuSsPuA697imDN3Pel3D7rveusmw==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_linux_x64___bun_linux_x64_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_linux_x64___bun_linux_x64_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-linux-x64/-/bun-linux-x64-1.2.5.tgz";
        sha512 = "pa3kQ4cXNV0jk5aM8+Hdmxr+b4QoPVgeAIA454SN5l3hMGfNsHjczKpsz0ksInZ8506iMMTCPEBXpyQJcSme+Q==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_linux_x64_baseline___bun_linux_x64_baseline_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_linux_x64_baseline___bun_linux_x64_baseline_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-linux-x64-baseline/-/bun-linux-x64-baseline-1.2.5.tgz";
        sha512 = "fCm/qp7e3VYlaoRs6NIEsKubPqyxjzLv8/qZkxeLLOlPd7CS8L26UY4KPOSjA+wrhPT+Nxsyvl/EEJq2R/iauA==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_linux_x64_musl___bun_linux_x64_musl_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_linux_x64_musl___bun_linux_x64_musl_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-linux-x64-musl/-/bun-linux-x64-musl-1.2.5.tgz";
        sha512 = "DuU2kQnY48g9tNWjFrZqyG+U2emCBwlhOPxbuY/TMVVNSTMAcQbE/bb3s2pZdhZH5ssjc5SH/ZyWU1TePcYB2A==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_linux_x64_musl_baseline___bun_linux_x64_musl_baseline_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_linux_x64_musl_baseline___bun_linux_x64_musl_baseline_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-linux-x64-musl-baseline/-/bun-linux-x64-musl-baseline-1.2.5.tgz";
        sha512 = "H7tuJz7mZvOTPo4yLbIXIxkiDGWSGd2DbwGl4zNol/FURqGsKQVqpomv86yl9KCXsUUOm5FX2i5Ed+ro8N//Cg==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_windows_x64___bun_windows_x64_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_windows_x64___bun_windows_x64_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-windows-x64/-/bun-windows-x64-1.2.5.tgz";
        sha512 = "oNDdPmzsCyvCATiYgkKWgxOeEx2F7m/i2MGUba+YJAeVXJsJg9iPJrLVBtETvKoSAgkXViwoUEw2U25jRYsp4g==";
      };
    }
    {
      name = "https___registry.npmjs.org__oven_bun_windows_x64_baseline___bun_windows_x64_baseline_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__oven_bun_windows_x64_baseline___bun_windows_x64_baseline_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@oven/bun-windows-x64-baseline/-/bun-windows-x64-baseline-1.2.5.tgz";
        sha512 = "j5FxI8FeKfWI6rEXA+1O3ASBMTp5CFcZ7MR+/aCpiBKrDse32wLaZMVGnvqQqs4y0YHUvR8b7eXHHTboezjL1w==";
      };
    }
    {
      name = "https___registry.npmjs.org__prettier_plugin_xml___plugin_xml_3.4.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__prettier_plugin_xml___plugin_xml_3.4.1.tgz";
        url  = "https://registry.npmjs.org/@prettier/plugin-xml/-/plugin-xml-3.4.1.tgz";
        sha512 = "Uf/6/+9ez6z/IvZErgobZ2G9n1ybxF5BhCd7eMcKqfoWuOzzNUxBipNo3QAP8kRC1VD18TIo84no7LhqtyDcTg==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_bun___bun_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_bun___bun_1.2.5.tgz";
        url  = "https://registry.npmjs.org/@types/bun/-/bun-1.2.5.tgz";
        sha512 = "w2OZTzrZTVtbnJew1pdFmgV99H0/L+Pvw+z1P67HaR18MHOzYnTYOi6qzErhK8HyT+DB782ADVPPE92Xu2/Opg==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_node___node_22.13.10.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_node___node_22.13.10.tgz";
        url  = "https://registry.npmjs.org/@types/node/-/node-22.13.10.tgz";
        sha512 = "I6LPUvlRH+O6VRUqYOcMudhaIdUVWfsjnZavnsraHvpBwaEyMN29ry+0UVJhImYL16xsscu0aske3yA+uPOWfw==";
      };
    }
    {
      name = "https___registry.npmjs.org__types_ws___ws_8.5.14.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__types_ws___ws_8.5.14.tgz";
        url  = "https://registry.npmjs.org/@types/ws/-/ws-8.5.14.tgz";
        sha512 = "bd/YFLW+URhBzMXurx7lWByOu+xzU9+kb3RboOteXYDfW+tr+JZa99OyNmPINEGB/ahzKrEuc8rcv4gnpJmxTw==";
      };
    }
    {
      name = "https___registry.npmjs.org__xml_tools_parser___parser_1.0.11.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org__xml_tools_parser___parser_1.0.11.tgz";
        url  = "https://registry.npmjs.org/@xml-tools/parser/-/parser-1.0.11.tgz";
        sha512 = "aKqQ077XnR+oQtHJlrAflaZaL7qZsulWc/i/ZEooar5JiWj1eLt0+Wg28cpa+XLney107wXqneC+oG1IZvxkTA==";
      };
    }
    {
      name = "https___registry.npmjs.org_balanced_match___balanced_match_1.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_balanced_match___balanced_match_1.0.2.tgz";
        url  = "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.2.tgz";
        sha512 = "3oSeUO0TMV67hN1AmbXsK4yaqU7tjiHlbxRDZOpH0KW9+CeX4bRAaX0Anxt0tx2MrpRpWwQaPwIlISEJhYU5Pw==";
      };
    }
    {
      name = "https___registry.npmjs.org_brace_expansion___brace_expansion_1.1.11.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_brace_expansion___brace_expansion_1.1.11.tgz";
        url  = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha512 = "iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==";
      };
    }
    {
      name = "https___registry.npmjs.org_bun___bun_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_bun___bun_1.2.5.tgz";
        url  = "https://registry.npmjs.org/bun/-/bun-1.2.5.tgz";
        sha512 = "fbQLt+DPiGUrPKdmsHRRT7cQAlfjdxPVFvLZrsUPmKiTdv+pU50ypdx9yRJluknSbyaZchFVV7Lx2KXikXKX2Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_bun_types___bun_types_1.2.5.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_bun_types___bun_types_1.2.5.tgz";
        url  = "https://registry.npmjs.org/bun-types/-/bun-types-1.2.5.tgz";
        sha512 = "3oO6LVGGRRKI4kHINx5PIdIgnLRb7l/SprhzqXapmoYkFl5m4j6EvALvbDVuuBFaamB46Ap6HCUxIXNLCGy+tg==";
      };
    }
    {
      name = "https___registry.npmjs.org_chevrotain___chevrotain_7.1.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_chevrotain___chevrotain_7.1.1.tgz";
        url  = "https://registry.npmjs.org/chevrotain/-/chevrotain-7.1.1.tgz";
        sha512 = "wy3mC1x4ye+O+QkEinVJkPf5u2vsrDIYW9G7ZuwFl6v/Yu0LwUuT2POsb+NUWApebyxfkQq6+yDfRExbnI5rcw==";
      };
    }
    {
      name = "https___registry.npmjs.org_chevrotain___chevrotain_11.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_chevrotain___chevrotain_11.0.3.tgz";
        url  = "https://registry.npmjs.org/chevrotain/-/chevrotain-11.0.3.tgz";
        sha512 = "ci2iJH6LeIkvP9eJW6gpueU8cnZhv85ELY8w8WiFtNjMHA5ad6pQLaJo9mEly/9qUyCpvqX8/POVUTf18/HFdw==";
      };
    }
    {
      name = "https___registry.npmjs.org_chevrotain_allstar___chevrotain_allstar_0.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_chevrotain_allstar___chevrotain_allstar_0.3.1.tgz";
        url  = "https://registry.npmjs.org/chevrotain-allstar/-/chevrotain-allstar-0.3.1.tgz";
        sha512 = "b7g+y9A0v4mxCW1qUhf3BSVPg+/NvGErk/dOkrDaHA0nQIQGAtrOjlX//9OQtRlSCy+x9rfB5N8yC71lH1nvMw==";
      };
    }
    {
      name = "https___registry.npmjs.org_colors___colors_1.2.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_colors___colors_1.2.3.tgz";
        url  = "https://registry.npmjs.org/colors/-/colors-1.2.3.tgz";
        sha512 = "qTfM2pNFeMZcLvf/RbrVAzDEVttZjFhaApfx9dplNjvHSX88Ui66zBRb/4YGob/xUWxDceirgoC1lT676asfCQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_concat_map___concat_map_0.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_concat_map___concat_map_0.0.1.tgz";
        url  = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
        sha512 = "/Srv4dswyQNBfohGpz9o6Yb3Gz3SrUDqBH5rTuhGR7ahtlbYKnVxw2bCFMRljaA7EXHaXZ8wsHdodFvbkhKmqg==";
      };
    }
    {
      name = "https___registry.npmjs.org_dateformat___dateformat_3.0.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_dateformat___dateformat_3.0.3.tgz";
        url  = "https://registry.npmjs.org/dateformat/-/dateformat-3.0.3.tgz";
        sha512 = "jyCETtSl3VMZMWeRo7iY1FL19ges1t55hMo5yaam4Jrsm5EPL89UQkoQRyiI+Yf4k8r2ZpdngkV8hr1lIdjb3Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_dot_properties___dot_properties_1.1.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_dot_properties___dot_properties_1.1.0.tgz";
        url  = "https://registry.npmjs.org/dot-properties/-/dot-properties-1.1.0.tgz";
        sha512 = "uyyuVNX+wq1lTrmLO9iJJAX/vpJ57uppiXQpsd4j1y6NAtHkhCROA4si4mTZMTRshCbcLC1+EMXWZV2MPHUl9A==";
      };
    }
    {
      name = "https___registry.npmjs.org_fs.realpath___fs.realpath_1.0.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_fs.realpath___fs.realpath_1.0.0.tgz";
        url  = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha512 = "OO0pH2lK6a0hZnAdau5ItzHPI6pUlvI7jMVnxUQRtw4owF2wk8lOSabtGDCTP4Ggrg2MbGnWO9X8K1t4+fGMDw==";
      };
    }
    {
      name = "https___registry.npmjs.org_glob___glob_7.2.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_glob___glob_7.2.3.tgz";
        url  = "https://registry.npmjs.org/glob/-/glob-7.2.3.tgz";
        sha512 = "nFR0zLpU2YCaRxwoCJvL6UvCH2JFyFVIvwTLsIf21AuHlMskA1hhTdk+LlYJtOlYt9v6dvszD2BGRqBL+iQK9Q==";
      };
    }
    {
      name = "https___registry.npmjs.org_inflight___inflight_1.0.6.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_inflight___inflight_1.0.6.tgz";
        url  = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
        sha512 = "k92I/b08q4wvFscXCLvqfsHCrjrF7yiXsQuIVvVE7N82W3+aqpzuUdBbfhWcy/FZR3/4IgflMgKLOsvPDrGCJA==";
      };
    }
    {
      name = "https___registry.npmjs.org_inherits___inherits_2.0.4.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_inherits___inherits_2.0.4.tgz";
        url  = "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz";
        sha512 = "k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_java_parser___java_parser_2.3.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_java_parser___java_parser_2.3.3.tgz";
        url  = "https://registry.npmjs.org/java-parser/-/java-parser-2.3.3.tgz";
        sha512 = "9YY8OGlNGfq5TDDq2SBjtIEHMVLeV8vSSZrXDaQBhQ84hi1zc3/+5l3DF3wW8JGqQT2kNVha05dziSamvN8M/g==";
      };
    }
    {
      name = "https___registry.npmjs.org_lodash___lodash_4.17.21.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_lodash___lodash_4.17.21.tgz";
        url  = "https://registry.npmjs.org/lodash/-/lodash-4.17.21.tgz";
        sha512 = "v2kDEe57lecTulaDIuNTPy3Ry4gLGJ6Z1O3vE1krgXZNrsQ+LFTGHVxVjcXPs17LhbZVGedAJv8XZ1tvj5FvSg==";
      };
    }
    {
      name = "https___registry.npmjs.org_lodash_es___lodash_es_4.17.21.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_lodash_es___lodash_es_4.17.21.tgz";
        url  = "https://registry.npmjs.org/lodash-es/-/lodash-es-4.17.21.tgz";
        sha512 = "mKnC+QJ9pWVzv+C4/U3rRsHapFfHvQFoFB92e52xeyGMcX6/OlIl78je1u8vePzYZSkkogMPJ2yjxxsb89cxyw==";
      };
    }
    {
      name = "https___registry.npmjs.org_minimatch___minimatch_3.1.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_minimatch___minimatch_3.1.2.tgz";
        url  = "https://registry.npmjs.org/minimatch/-/minimatch-3.1.2.tgz";
        sha512 = "J7p63hRiAjw1NDEww1W7i37+ByIrOWO5XQQAzZ3VOcL0PNybwpfmV/N05zFAzwQ9USyEcX6t3UO+K5aqBQOIHw==";
      };
    }
    {
      name = "https___registry.npmjs.org_minimist___minimist_1.2.8.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_minimist___minimist_1.2.8.tgz";
        url  = "https://registry.npmjs.org/minimist/-/minimist-1.2.8.tgz";
        sha512 = "2yyAR8qBkN3YuheJanUpWC5U3bb5osDywNB8RzDVlDwDHbocAJveqqj1u8+SVD7jkWT4yvsHCpWqqWqAxb0zCA==";
      };
    }
    {
      name = "https___registry.npmjs.org_mkdirp___mkdirp_0.5.6.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_mkdirp___mkdirp_0.5.6.tgz";
        url  = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.6.tgz";
        sha512 = "FP+p8RB8OWpF3YZBCrP5gtADmtXApB5AMLn+vdyA+PyxCjrCs00mjyUozssO33cwDeT3wNGdLxJ5M//YqtHAJw==";
      };
    }
    {
      name = "https___registry.npmjs.org_mvdan_sh___mvdan_sh_0.10.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_mvdan_sh___mvdan_sh_0.10.1.tgz";
        url  = "https://registry.npmjs.org/mvdan-sh/-/mvdan-sh-0.10.1.tgz";
        sha512 = "kMbrH0EObaKmK3nVRKUIIya1dpASHIEusM13S4V1ViHFuxuNxCo+arxoa6j/dbV22YBGjl7UKJm9QQKJ2Crzhg==";
      };
    }
    {
      name = "https___registry.npmjs.org_ncc___ncc_0.3.6.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_ncc___ncc_0.3.6.tgz";
        url  = "https://registry.npmjs.org/ncc/-/ncc-0.3.6.tgz";
        sha512 = "OXudTB2Ebt/FnOuDoPQbaa17+tdVqSOWA+gLfPxccWwsNED1uA2zEhpoB1hwdFC9yYbio/mdV5cvOtQI3Zrx1w==";
      };
    }
    {
      name = "https___registry.npmjs.org_once___once_1.4.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_once___once_1.4.0.tgz";
        url  = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
        sha512 = "lNaJgI+2Q5URQBkccEKHTQOPaXdUxnZZElQTZY0MFUAuaEqe1E+Nyvgdz/aIyNi6Z9MzO5dv1H8n58/GELp3+w==";
      };
    }
    {
      name = "https___registry.npmjs.org_path_is_absolute___path_is_absolute_1.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_path_is_absolute___path_is_absolute_1.0.1.tgz";
        url  = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha512 = "AVbw3UJ2e9bq64vSaS9Am0fje1Pa8pbGqTTsmXfaIiMpnr5DlDhfJOuLj9Sf95ZPVDAUerDfEk88MPmPe7UCQg==";
      };
    }
    {
      name = "https___registry.npmjs.org_prettier___prettier_3.5.3.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_prettier___prettier_3.5.3.tgz";
        url  = "https://registry.npmjs.org/prettier/-/prettier-3.5.3.tgz";
        sha512 = "QQtaxnoDJeAkDvDKWCLiwIXkTgRhwYDEQCghU9Z6q03iyek/rxRh/2lC3HB7P8sWT2xC/y5JDctPLBIGzHKbhw==";
      };
    }
    {
      name = "https___registry.npmjs.org_prettier_plugin_java___prettier_plugin_java_2.6.7.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_prettier_plugin_java___prettier_plugin_java_2.6.7.tgz";
        url  = "https://registry.npmjs.org/prettier-plugin-java/-/prettier-plugin-java-2.6.7.tgz";
        sha512 = "AVm+X7fhAZpYKiUCdUIGZ8HJbkGkTUgYQIKVuCQEplcqpGw2ewVnNGcPb1Kc3+MYMfiEqzhd8ZYhMGVHw6tZdQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_prettier_plugin_properties___prettier_plugin_properties_0.3.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_prettier_plugin_properties___prettier_plugin_properties_0.3.0.tgz";
        url  = "https://registry.npmjs.org/prettier-plugin-properties/-/prettier-plugin-properties-0.3.0.tgz";
        sha512 = "j2h4NbG6hIaRx0W7CDPUH+yDbzXHmI2urPC1EC8pYrsS5R5AYgAmcSDN0oea+C5mBiN6BK0AkiSKPj0RC17NDQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_prettier_plugin_sh___prettier_plugin_sh_0.15.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_prettier_plugin_sh___prettier_plugin_sh_0.15.0.tgz";
        url  = "https://registry.npmjs.org/prettier-plugin-sh/-/prettier-plugin-sh-0.15.0.tgz";
        sha512 = "U0PikJr/yr2bzzARl43qI0mApBj0C1xdAfA04AZa6LnvIKawXHhuy2fFo6LNA7weRzGlAiNbaEFfKMFo0nZr/A==";
      };
    }
    {
      name = "https___registry.npmjs.org_regexp_to_ast___regexp_to_ast_0.5.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_regexp_to_ast___regexp_to_ast_0.5.0.tgz";
        url  = "https://registry.npmjs.org/regexp-to-ast/-/regexp-to-ast-0.5.0.tgz";
        sha512 = "tlbJqcMHnPKI9zSrystikWKwHkBqu2a/Sgw01h3zFjvYrMxEDYHzzoMZnUrbIfpTFEsoRnnviOXNCzFiSc54Qw==";
      };
    }
    {
      name = "https___registry.npmjs.org_rimraf___rimraf_2.7.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_rimraf___rimraf_2.7.1.tgz";
        url  = "https://registry.npmjs.org/rimraf/-/rimraf-2.7.1.tgz";
        sha512 = "uWjbaKIK3T1OSVptzX7Nl6PvQ3qAGtKEtVRjRuazjfL3Bx5eI409VZSqgND+4UNnmzLVdPj9FqFJNPqBZFve4w==";
      };
    }
    {
      name = "https___registry.npmjs.org_safe_buffer___safe_buffer_5.0.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_safe_buffer___safe_buffer_5.0.1.tgz";
        url  = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.0.1.tgz";
        sha512 = "cr7dZWLwOeaFBLTIuZeYdkfO7UzGIKhjYENJFAxUOMKWGaWDm2nJM2rzxNRm5Owu0DH3ApwNo6kx5idXZfb/Iw==";
      };
    }
    {
      name = "https___registry.npmjs.org_sh_syntax___sh_syntax_0.4.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_sh_syntax___sh_syntax_0.4.2.tgz";
        url  = "https://registry.npmjs.org/sh-syntax/-/sh-syntax-0.4.2.tgz";
        sha512 = "/l2UZ5fhGZLVZa16XQM9/Vq/hezGGbdHeVEA01uWjOL1+7Ek/gt6FquW0iKKws4a9AYPYvlz6RyVvjh3JxOteg==";
      };
    }
    {
      name = "https___registry.npmjs.org_tinytim___tinytim_0.1.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_tinytim___tinytim_0.1.1.tgz";
        url  = "https://registry.npmjs.org/tinytim/-/tinytim-0.1.1.tgz";
        sha512 = "NIpsp9lBIxPNzB++HnMmUd4byzJSVbbO4F+As1Gb1IG/YQT5QvmBDjpx8SpDS8fhGC+t+Qw8ldQgbcAIaU+2cA==";
      };
    }
    {
      name = "https___registry.npmjs.org_tracer___tracer_0.8.15.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_tracer___tracer_0.8.15.tgz";
        url  = "https://registry.npmjs.org/tracer/-/tracer-0.8.15.tgz";
        sha512 = "ZQzlhd6zZFIpAhACiZkxLjl65XqVwi8t8UEBVGRIHAQN6nj55ftJWiFell+WSqWCP/vEycrIbUSuiyMwul+TFw==";
      };
    }
    {
      name = "https___registry.npmjs.org_tslib___tslib_2.8.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_tslib___tslib_2.8.1.tgz";
        url  = "https://registry.npmjs.org/tslib/-/tslib-2.8.1.tgz";
        sha512 = "oJFu94HQb+KVduSUQL7wnpmqnfmLsOA/nAh6b6EH0wCEoK0/mPeXU6c3wKDV83MkOuHPRHtSXKKU99IBazS/2w==";
      };
    }
    {
      name = "https___registry.npmjs.org_ultron___ultron_1.1.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_ultron___ultron_1.1.1.tgz";
        url  = "https://registry.npmjs.org/ultron/-/ultron-1.1.1.tgz";
        sha512 = "UIEXBNeYmKptWH6z8ZnqTeS8fV74zG0/eRU9VGkpzz+LIJNs8W/zM/L+7ctCkRrgbNnnR0xxw4bKOr0cW0N0Og==";
      };
    }
    {
      name = "https___registry.npmjs.org_undici_types___undici_types_6.20.0.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_undici_types___undici_types_6.20.0.tgz";
        url  = "https://registry.npmjs.org/undici-types/-/undici-types-6.20.0.tgz";
        sha512 = "Ny6QZ2Nju20vw1SRHe3d9jVu6gJ+4e3+MMpqu7pqE5HT6WsTSlce++GQmK5UXS8mzV8DSYHrQH+Xrf2jVcuKNg==";
      };
    }
    {
      name = "https___registry.npmjs.org_wrappy___wrappy_1.0.2.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_wrappy___wrappy_1.0.2.tgz";
        url  = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
        sha512 = "l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==";
      };
    }
    {
      name = "https___registry.npmjs.org_ws___ws_2.3.1.tgz";
      path = fetchurl {
        name = "https___registry.npmjs.org_ws___ws_2.3.1.tgz";
        url  = "https://registry.npmjs.org/ws/-/ws-2.3.1.tgz";
        sha512 = "61a+9LgtYZxTq1hAonhX8Xwpo2riK4IOR/BIVxioFbCfc3QFKmpE4x9dLExfLHKtUfVZigYa36tThVhO57erEw==";
      };
    }
  ];
}
