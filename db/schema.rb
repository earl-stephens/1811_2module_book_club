# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190206065420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "hometown"
    t.text "image", default: "https://neilpatel.com/wp-content/uploads/2016/05/writer.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "author_id"
    t.index ["author_id"], name: "index_book_authors_on_author_id"
    t.index ["book_id"], name: "index_book_authors_on_book_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "pages"
    t.integer "year_pub"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image", default: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhMSExIWFhUXGBUVFRUVFhUVEhUVFhUXFhUVFhUYHSggGBolHRUVIjEhJSkrLi4uFx8zODMuNygtLisBCgoKDg0OGhAQGi4mHyUtLS0tLS0rLS0tLS0tLS0tLS0tKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKIBNwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAQIDBAYABwj/xABDEAABAwIEAwYDBQYEBAcAAAABAAIRAyEEBRIxBkFREyJhcYGRMqGxFEJSwfAVIzPR4fFicoKSByRjshY0RFSTwtL/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMABAX/xAAqEQACAgIBBAEDBAMBAAAAAAAAAQIRAxIhEzFBUQQyYXEUIoHwkaGxQv/aAAwDAQACEQMRAD8Ap5BT1VPK69Kww7oWD4Yow7UeZW5Y+wUMz5OmKLrE97VDRMqwBZSfKMlTBuLCB1DDitJiKEhCa2BuUmN1dlZrZKgTXqTIT8oy+0lWxhQFboPa0J5T8IRRYVwLQ0K1WriEBq5o0c0ynmQdsspuhen5LVYyVEnTKYUAnFMcnprkAkZSJSmlYwhTSlJTZWCIVBjcPVeWBj4bFwrQpOOzT7JuNwmI0g02GdiNkmROuC2FpS5LWCqgOY0uuLwimJqjTc8oHqViaOUY8PDxTAIn43jn5Kerk2McCalakzmRqcY+iTpSoeWjd2aX9qUwXlpmLGPAIWczGm4HPyQZmRaZ1Y5jZudLbn3cnNyPCx38ZUINraQJ6bIvBfk0ZwiOwuatDX7NvsNzD3T+SbjM+aLC9t+V005floJvUqRvNRwFt9oUIxWAHw4Vh/zy4zP+IlOvjpszz14BjM/06g50fFBEfjDgfm5VKmdB40yTcm1zPkFoxnWGZdtGm0NiS2m0b2tA6/RVXcVuEQAAfQC0iw5Tb0VliXoXrSAANbUHNpVTdptSqX0ny6Eqc/arEUKg5iRpO9t4RKpxK/TJOo9PSFDh+IHXBEm97xMuuJ8ITa8XQNnfcHHCYpx/hwepewG/PeVUzjK61EntCyRI7rpJ22EdCEUfnTu8YvIPsG2j3QrNMZUqElzryT77kD0HsE8LT7IWfK5bBtOr+inyonyd7/IprXePoV0Uctl7B4fW9rNpsthgK2umx3OIPgRZw9wVlMjrRWZKO5TU0dsw/dqOI8nXClkKRCjgoXtTXYtV6mMU0mMPe1cqj8YuT0LYf4WaCLrZsYIXnGU5s2k6CjtXi6kBAK58sJuXCKRcUjYMeAnHFALz2txh0BVSpxLVdtZBYZgtHolbHNHNBswzhjeax78XWd95UK2qYcSnjg55Zro0OI4gHJDcTnpOyoU6IVpuGaqaRRrZVqZk89USyHFvm6bTwTSr+EwoaCs3GqNTD1PGiFYp1gVl6zjyKLYN5gKMo0KgrqTSVE16dKQxxKalK6myTCwUGatXC0WN1xJ67lCqnF+FaSGsmPBNzvIXYgN0vjT4TKEjgVwgmsBP+EfzWjkjXI/SXkt1OOrEspc4uhuJ42rGwAHkrlLgfeazo8AFOzgSiPiqv+X8k3VgxunFGVxHEVd33iEMqY6qfvG/Ur0T/wADYfmXnn8XRPo8I4QT+7cfN5/mt1oLwGl7PM6kwHE84H5+im7buiHHefJeoN4Ywtv3DCJi5J3Uzctw7AYpUhADrNFpMXPgi/kfYVJHkIeeV/HmU0UKx2pv/wBrj+S9mGkVAyGhukmWtG8i3tJ9FTxGLuG6nTIBDQ0af3hZJ8LEwl/Uv0HRM8qZlOIdtQq/7Hx9FZZw1jHD+A710t+pC9NdWAMTUMlwHwgO06STMWmSPRJVxDQ5oAJBAIcbyCO6fVK/ky9DLGmefU+DsS6+lg23e3p1BPgrGH4GxE3fS93H6Nuti/MWXMt6eajOc0h99u1x6bJf1GQbp/YzFXg6oGkmox0yIadAsOTi0zvtA23QPNMFpIaXN2dHxuPdc5h70AWLTaPdbCpn9Ls3w6XDVA2Ji4i1/NY7E4ztIA+72h8L1HO+h38VXFKbfIJxSQEfRI5e1/6qNzUUcOqidT8V2KRyOAObIMgwjGUVXuLi7mBJ8pAVJ9AJ+CrFj4m0D2k/zRk7QIqmHNBhQPpq5yUFRc6Z0Uim5i5SPSJ7FoG5g7vlVu0KvVKWp5Vr9mTsF0Wjldgyi+6OZfh9ULsPlPe2WxynLGhoEXU8mRJDxTsEVMNpCDZk7vWWwzWhpCw+Oqd4hQxT2Z0zVIhGIITvtxUGpRPKv3JXQbwWYIiMdYrLUqkK1TrpXA2xpsL3gjFNkQhGSiWhHIUMncyFBTw5NITQVMJPTYXGAiVHJahgyFUw1QMpuefAekrW0cU0gQeSMYqVpiyk400CxltXTplvzTKuV1nRLmwPO6MfaB1SduOqPQxg68yk7DVogFo8Uw4etHxNnmYlETWCj1i6PSgKskgUMvfN6kyb25J+IwDpkVSLRYBEQ5qa97UvSgN1ZgduWGQe1fa/KPomvyoc6jzYCO71kckVNRvgmGu3eAb9Oi3Th6D1Z+wScsaTd9QwIs8i0+EeKU5RRi4cbzd79+syiL67RzHt+uqY7GM6idgR18fmtrH0Hefsp/s6juWm3V7z4fiUdTLMPzpMPnf6qycdTgwQdvGIg3jzPsojjgTvIPj4wR4Wg+oWpeEDaXsgGVYaBNGlffuN/l5pr8JhhtQpHoOzZe8dOsLnZiABfe4FtUnn4E3t/VUzmQcWjUN2u/095wj1Y4R5LUMpSIc9rUqLKlRlKn3du42525DxXmmZYmpWcHvN4gQBAAm0ep91uuMawOE0gwXVJAMCabAAXb9SPZYMK2JJKxpXXJVDnjn9U77U7m1TuCRzVa0TojGKHQpaLwXiPL5pjqYUmCw+p8dIKLqgK7NGdlA9TxZQuC5kdDIHBInvXJxSrSMVL9Vo8K4QLLLV3w8opgsdAVpK0c7DlaqG3hEcvzNsrOYuvLUmW1LqbhaDf7kaDOMVIWExvxFarMHd1ZLG/Euf46ps7fkRVIiBTSmyUglddHIPJT6L1A5S4ZqdIm2bjIB3QjbkHyFvdCL1DdcWT6iqHFRFSNKL4DJNQ1OPokSszdGdzjGaKbY2kT+atYfiBmlpYbRfwWjrcPUnNILZHNCn8EYctOlrgB0cR+aZYqG68WqaIKefNIPeHuudn4I3Q88ENDjepG+5VjA8JMeSA6oI3M/zR1ryDaHoIftiwuuObnZVanA45YipP+n+Sa7gmB/5mpPkP5JdH7NvjLozRQvzaYMH+k7ofW4Hf/7pw82/1VN3BFcf+qH+13/6W6f3DvAJ1c3I5neI/JRVM5sfKYG5n7vzuUIqcHYjYV2E8h3gqtPhXFxOumG9S9wET/lR6a9jbwD1bNxe959LQbeyqVc1vbf70XgkEnn439ULxPDGLEQ+m6YPdqHltyVV/DmNBjTJ8KjZM+ZCKxr2F5IBcZibgAwNO3MWEHzA9ZVTEY4mBc39DpsXG1xf5eFqFPIcdypO6/xKfl+PzS1Mmx1waVQ9e80z5w66dRryDaARNY8zBAMxvsbAde80H25iK4Ja8lxmSY5AAscQIiZuP0VS/Z+NYP4NYDazXdZ5eKSlh8SImjXF5vRqdIn4ei1OjJxsIZ7jXDDMpgm9SqHc3FpIdE8hMW8AsqCjGODywmrLCy7Q9rhqk3Akb2+aCmr+pTY1wbI14HEpJTO0/UhJrVaJWKVZyn4yqTnq3lb4d5rNcGT5D52ULypC6ygeVzouyGq5Im1VyokIwdjHS5S4WVVgk7H2RbA4Qk7FW2olrsSvf3UmBr3V1+WOKjwmUuBS7xruNLFLguYuvLFnqxkrVPyiWxdBsRw/UmxUsUoW+SudyaVAzQEwgIichq9VG7IavVdO0PZyVL0UiwKSjyVg5NWCbTyyrIsjtH2LTNdkhsETrFDcow72gSFfrA9FwT7nQmS0HXWhyzMIYR0WawszsULzDPS3UwbTc81op3wLLk9Bo5jLS7krjMWNLQOf03XnFXN9VCWujoo353VbUbBtp57KsZMR4j0bE48GYFhYrsJVAZbc3JXmreJKopP73e1HlaEVyjOaj6B73et5XQm2grG6NtQrg3SUqzSXOJFvH1WPOauDWs3JJFja25KqYDMdySd3Cf8AUBZDbgXQ2tapJ8lBWMt7v91nKWYvdVLd2h0/iuDZpT8fmsatJkTpnYaibgDluhfJtWaJrQ2leznQ0Wky4anR1sHeyr1aof8ACyBy3+aHOzgEwCJBrOMD4C1umPPvx6lUaWZl1Ro1HQ0EuAc0F7nNIYBPKRPLZDubVhzDNDJc4yGgudz2E8k2o0hr/wAbu6JIBl/eJJ/wtJ/+FZ7FYqoGls2LmNfHMF4Ba09SNvNWP2m57qZcL/vXAACCW0mhoPkMQ/1aFkguLCz30wdIDYAhvLuiwaPSFK14jUOezZgHxJO6y+JxjgWsAALnNHeBOlrjd58ANR8grtfGNaAA4QNQmHAkhxFgJ5gyPA9EHFhovYisdRAIkQAB1c1znXO1m6Z6vC7E19DIG+oNDosJMF3SJJJ9UGyis5zWuP4nv1kEB0VNbfbsS2B0PVS452pzG6xu8Gzr6mOpti343tKLVcGoocX5i7D0KbKZLala4cD32sGm0/KR0J5rz0UnElx3PM3Pr1Wv4/rasWwbBtOR07zifTdZlxVoOlwPHHatkPY9SlLAnEppKe2NqkRuYr+XUBE81SKI5ee6tJ8ASVhAlRPKVzlXqVVFIq2K5Kqzq65PQlnqTOH2fgHsp2ZE0ckda8J+oLma+4ikwCcnb0TDlTRsFoA2eSXsUugeozPfZD0Ub8F4LSdgkOHCGhuozLOw8clG6mPwlas4dvRIcKzotqHcy+HwRqOgN80UocPsm6mfim0nRCZi87LBIZq8AUjyRXDKqE5dkEqOVUmjYJKuVsPIITS4gDiA5paehhXKeYAugmOidLbsSknF8kr8nEWXnnFGUPpVC7SSw3kCw816kKgAnUqVeo2o0yA4H1RvR9zRd+DxmpjRGmbK5+0WOawk3FitdnHDGCBBcyC6wDSRfyCpn/h5QcJFV7ecSD+Sr1MbGWy5ozrcQzvDkVap4kCmANjYog3/AIbvOotxBt8MgfNUq3BWNYDD2Fo6khFuLrkO92qKj8XDIBMgn2TMHVJFQcwNQHjv+SSrkGOaL0dQ6tIP1VKK9N0uoVByPdJEeYT8NcMT8hnCZs9ttR0kyRtJPOfBR18yfo0AgAEmALEmJPibID9tGxt4GxT/ALQ080dObFNCzHaT2g2ca2kcu+0ET6NKjo42A1umYvuS55c0yfSB8kIp1R2ZE3aQR5C30JS0azgQ4G49dxB+qGo1cmvwuMpNDWFznAO1ue+B3hembbNaAD1keiqVMaWnU2AOzqGTuNTsMAPCxHusziKjnA3iQrtXEAspv6Eg/wCthYB6aafySaU/yZ8hDB4kHS5ziXkt1ATpbT7QA3O8kUj7DmUXGKc+mSWthpbog3cy5HLo1l+eoHnbI0qveE7AtLo3IDpj5lGnY8QS3SGg6RH4ZvY8vDYCANkZLkWi3Rqy0PcSGd+WSS4AHFDYiSSTPzVTtmmpSu8Emn0Ijt6OwMHr15p2ErAhxc86gaw7ouQGVS0tIEAxVaPMKvg3A1KfenTpEGSf41M/kh7DRS4tM4reQKVLSeoLReOSCvRfigj7SDyNGjE+DAPyQd7gnh2RRdhhTSkqVgFEXk8lVJiSkkPc4I9wfRZVq6HmBE+ZWbLPVX8qwb3u7sz4WQyRuDV0LCT3XAez3Dsp1XNYZH08ECrFFqmW1W/dP1VKrgqn4D7KeOkkrKz5d0DXFcpauHePun2KVdCaI0z3d9GFD2xCtg6uamZhWrgq+wLopsxUKdmNCsfZWrvsbeiOsgWiL7YFDUxgVo4MKvXwjUJbBVFR1eeakpnxVavSA2VZj3zYKNsrSK/EJ0Q7xhMwtUOhTcQUXOpSRtBWfweMuPBc+Rcnfh5gXMxf/wAwz1UlTE/vmhUMyce1Y4bJXz2gfzXVjfC/BLJjsP5ri9NKo7o23squQ13Ggy/JU80eX0al+X5J/Db5pNHQKOSVKx4Y+CTiHD6qQcPjb3p8kR/aoZg+2FyQBfqbKKo9pOnlF0Pz+kKeF0N+EukeF5U8btpfcOSP7eSTD8ROnSCDbwVvDZ2Kp0Fgd1B2WIwVcU2OJZJcbEq3kwaXjVJsTYwvWcI0+Dyqdm3q5oGw1vxGGhs81NUxzO0NI1GhzQ0uBaD8XJZLKawqYqkRycT6AFDHZjGY1nG+pxb7C30XNlhzS9WdGFWuTdYvLw9xMUHN/C9pB/3f0Q/EcM4VxGvCNBO5pke9oMJ9HEgwSfRIHnVJcRzMdFzKckdDxpgqtwNgnEgOq0j4l2n3cIKG1+Bm37LGiBaHAOPppK1tEaiAHuGogTN4JFkPdnY+316cBzaTBobs0OBuT1MEeyrHNkruI8SujNYrgvEU2NIqdo98hrGscLg/edcARCD1cox1MFpwzyJ+7DuY2jxA9l6iyq0RULA0gaobIDi+dV5tvMqKmWOk06tVh3DS+QTPLUCmXynXP9/wL0Gjyh+Iez+JSez/ADNcPqEtHMGHcr1DClznFnbNc68MqNZqsZO3eIuNgFWx+ApuMHB0Kk7EEB56wKu532VFnT8f7FeNowuFx4bMOIBIMSLkiHeWzfml7YAgtPIjccwRI67z6LTYnh7A6S+rQdR25uPgf4fd3BCFv4cwdRs0MQ7/ACk6iP8AbMGeqfqQ8i6y8AnivEansqDfTp9AdQIi0d75FZ/UTclE8wwBaS0VdQBcCD8TYcRceIv6qrRo94QPVdEGlEnJSciBo8D6qUUyd1YqR6qNz0drNqkc1qP8KOAqXCANWl4RoFzypZfpY8O5rjUaeSaalNTnCOjZUquFdvC4FRexHtok/wBFyqdgZmEif+TG4pVCFKMWVYbg004NUpnJaGMxinZmLRuomYNSjLxN0VsZ6iOx02aEjcG51yVbZQa3kpWuTa39Qu1ditTy5oUzcK0clNKQlPrFC7MrYrBh7SIWSzHhhrJe0nrHJbF+IaNyqlbFsdaVDLCLL4ck4Pg84xeIaTE3b18F2IeHsEG61WYcMUKxki/UGD8kHxHApH8Ko5vn3glxxSrk6ZfIvwVMPR7pHUKtSrOp0zHKVcOVY2kLtbUA6WPsUOfiCA5tVjqc7yDHvso5INv2dOPLBruWKWeMcGAA6j8SK5v3sL1grP0cupd1zKgI5iUeoVA6jVpzFrSkmoxacQ8vhmYoB9ak6m0CGmT1sq9J5p6DAPdIv5JcHiuyc8EwD4blVdWpwBNl6cb59HnSrj2F+Dn/APMM8nn5IQ+ftT3f9Q/VGci7lanHUj0IQ57CK9a094n5qOSVZH+C2CFx/k1+BkHvQQRYj811asXOdaALBCMBi2XkkO2hEKdUTYyD7rz22nbO7VMLZY797TBBt15Q1xlYA4v/AJ2rUIs5+k+Rt+QXomAizvF3/YV5q12nEHrradrRM7K3x5bKX4IzjUv79zdDEOaCZvIAG4iLmPKPdRVJ1mRBi2m29wVXNc8oV2jUaWNDviba97WiVzt68lqsirUdQAe91iC0j4mOvdkc7/NMzKm51O8l+nUwwCWvLDFhbVqPLnCmLy57WtIAkySYEBrrX9E6rVa4d0ggggEbm0arjzI9EVkapiuCuitk+ZCqxri0PqFrmguEgOGnW4AwQBqAI5geSLZ+5jcO9zabXANe4AtBaC0i4HqT/pKyWQ1XNbUkd5r6gLWiGtiTHhM2/otNii12HxIP3qJ0ht4eQ5sx1+H5jquxOpHFOCq0eZYXChzS83cDNydrgTO6iqugQP7p4JBe2TH9eagqLsV2TfCISkLkj3cgmwqkh4KuYHHvpOBaYuJVFzgBKSmSVmrXILPYcv4ioGm2XCYvO6uU8fQcLOHuF5Cx1lI2sYXI/jr2Vs9ZptokG4XLyqjjHjZ7h6lcl/Tv2HY99lKuhdCscooTkyUjnrGJUhcoO1JSOnqhsGiR2IHVVq9aRYptanIhdQw8BTcm+BkkgdVw7zzTKeXOmSjPZBStak6dj70U8PQIVoSpJATDVHJOopC7NnFvVVa9GkbFoKdVxDdib9Bum9mTsI890kqfYZcGazXhChVOoDsz1b3SszX4bxrHHsamto/Hb0XpbcM0XMk/JRV9WwgBC3FcjqT8HjeatrMtVpEHmRce4VPD1mnvaoIPwnmvW8TSpCz4cem4Wfx/DOFqySNBndtlWHyFVNBcLdmXp40do17eRB/JTHEA4kuGzh81PjeCy3vUa3kHcz5oc/KsdSIf2erSZBbB+S01DIv2vxQ+KbxvlBKph+9OxO3RWTSsDNwglTiOpOmozQRva/sVPQzxswSC08xZw9Fyyw5Uux2xy4n5NvlxI7Pn19QQsFUbFd9p711o8tzylqBDxbkbTHSUIzemG4qpAkO7wjob2U8ClFtNeBp02mmGMFXkRpBPzn9BMqYgAu6jkYP59UKwwMkzyKhbiPK+4jf0RjhtsMslIN0XyDJ9x5q7lmGPeMTIImbzE257fUINRxU73Nr+AHh6K3QzMghoFhy2J5m/mTukljl2Qdk0NzvCCjWFZotUIbUEWBJs7zkx7dEWwNJ9Sm57AZ0Qy8HVSfUl0m34Tf8AJUM7xjXYWo4g7NaPAuLAHehd8lb4Ye77KXAwWta2TJaSapi3WAPPURCvibcFfjg5MqrsY7OqDW4iowWgcgAJgardJmOiEYh3REczce0J5kDVO8wCTPmShdexhd2Pwc8+CBI5wCa+pHmoNyuhI5mx13FWqQUNNqsMQYYonbskakYU3WlHHgrlG510q1As+iW1glNUILh9Q3Pur1OqubYTUtSSlUbasqQFazUIk0J8ritRhhPgk1JHu/uVUr4lo6uPQfyCRsZIt9sPNc6r4gKsA53+EfNNFIDxQ2YaRI7EXhoJ8eSZUZN3PjwCc6p1sqWKx1FnxOE+JSNjJei4x4Hws9U/tRPecJ6LMYnOajpFO4G+mxjkf7KXDPrvaT2cH7pqENb6j4j7BC2Pp7DuIxwFgqVesXb2+S6jlpc1uupB59nLdXqbgeSuswjBYAesuPzSvZmWqAzsOyZ1A9e8N1YOXt/Eevif6KmMJor6SyQ4lzXWmbbAWAvziIT80xrW91p/ebDnp5XjfyQ1Hsn+zSdtuSt4LDENk2HQiFXyGi8QXlzpE3EN+d0Sxb5sN/1yR1pWK5O6M7muEZUBDsOKk84A+e6Cu4Ew7xq71J1zAMx6HktnRwZBmf6pcSJ5frxWU5xXDC9WeZ4zgnEN/hVGv6NNnR5qpVwWNoaXPouIbIBEOseVuS9RbTESY6qjUc57+6YA+Xim68v/AEkxornhnnNXNxpsHNdzDgAPER05JtLHU3QTI66bgdbb/NejYrCU6g0OpteOZIB+qA5hwPh3EdmXU3c4lzf6e6MZ4n4od5J/kzeMxcFvYvlsXMA36XH6lJTzctu5uo9Z0yPERHsrWK4RxVKezcyqOlp9jH1QfF66RAq4dzDvz5cwDaFaOOElS5/6B5nd9g1SrvxIa3RopAkkgzrfOps22Hh0W2oYYUcGabnBrnyWB0NMtgi3mAfJYfLeLtGkOaBEQQC11usyPWVoaedUsSXF1UtLQ7s2n4IIMd4GNUmJO8qEoyi+3AXJSrkxmZh3aXJkAcoNwDB6ILiKnIbo9xJTc1znjYw0Eg9BJE77FZ5o/uu3BzFMhm70Qll45pSL2VunS5ppo3KtsQ0IaZupg5NZShSNpLOjJMdTKYT8ilYwhMIMlAI6o5coyTC5MA97cnhcuXnjFlillcuTIA8rmc1y5HyAH402Kt4OmA0QAJAmBC5cpruO/pEqFOaLLlyKAAOJXkMEE3IB8R0Kyj7veDfvD/7LlyES0exucHQYxjdDWtsPhAHLwVh3NcuU33EEqfEP10VmklXIruZ9gM8n7ZTH/Rf/AN7FRqtGuoYuDY8xY7FcuWfYePcN5c4lpvy/MqWj8XouXILwK+7Jzt+uqH5iYYYtf8wuXIzBATMtmqCmP3Z/yrlyk+5aPYp5Uf3TPM/mrZ/muXJRn3I+ibTpg1DIB33E7AQkXIxA+xiuMsLTa86WNFm7NA/F0WIxDRJt0+i5cvTwdjnydjnVHaYkwIgSYFgNvQeyfS3CVcrsmiyuXLlIsRVeSclXJhBQmPXLljMiXLlyYU//2Q=="
    t.string "publisher"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "book_id"
    t.text "review_text"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "location"
    t.text "image", default: "https://ae01.alicdn.com/kf/HTB1ebxFSXXXXXcCaXXXq6xXFXXX1/18cm-14-6cm-Interesting-Vinyl-Decal-Karate-Stick-Figure-Man-Ninja-Car-Sticker-Black-Silver-S6.jpg_640x640.jpg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_authors", "authors"
  add_foreign_key "book_authors", "books"
end
