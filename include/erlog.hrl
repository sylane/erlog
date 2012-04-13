%% ===========================================================================
%% Copyright (c) 2009, Sebastien Merle <s.merle@gmail.com>
%% All rights reserved.
%%
%% Redistribution and use in source and binary forms, with or without
%% modification, are permitted provided that the following conditions are met:
%%
%%   * Redistributions of source code must retain the above copyright
%%     notice, this list of conditions and the following disclaimer.
%%   * Redistributions in binary form must reproduce the above copyright
%%     notice, this list of conditions and the following disclaimer in the
%%     documentation and/or other materials provided with the distribution.
%%   * Neither the name of "erlib" nor the names of its contributors may be
%%     used to endorse or promote products derived from this software without
%%     specific prior written permission.
%%
%% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
%% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
%% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
%% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
%% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
%% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
%% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
%% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
%% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
%% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
%% POSSIBILITY OF SUCH DAMAGE.
%% ===========================================================================

-ifndef(IS_ERLOG_INCLUDED).
-define(IS_ERLOG_INCLUDED, true).

-ifndef(NO_ERLOG_PARSE_TRANSFORM).
%% Activate parse transform
-compile({parse_transform, erlog}).
-endif.

%% --------------------------------------------------------------------
%% Records
%% --------------------------------------------------------------------

-record(erlog_entry, {level, pid, proc_cat, proc_name,
                      log_time, msg, vars, ctx}).

-record(erlog_ctx, {category, max_level = log, file, module, line,
                    function, arity, fun_index = 0, fun_arity = 0}).

%% --------------------------------------------------------------------
%% Global Specs
%% --------------------------------------------------------------------

-type log_level() :: log | debug | info | warn | error.

-endif.
