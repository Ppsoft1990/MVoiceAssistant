.class public Lbbl;
.super Lwo;
.source "VoiceChooseOpLogHelper.java"


# static fields
.field private static b:Lbbl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lbbl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lbbl;->b:Lbbl;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lbbl;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbbl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbbl;->b:Lbbl;

    .line 32
    :cond_0
    sget-object v0, Lbbl;->b:Lbbl;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_0
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendDownloadOpLog | some param is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    const-string/jumbo v0, "d_speaker"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string/jumbo v1, "FT69316"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    const-string/jumbo v0, "d_star"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "FT69317"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendEntryOpLog | entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "FT69307"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "starId"    # Ljava/lang/String;
    .param p2, "ringType"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendEntryOpLog | starId or ringType is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_ring_type"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "d_star"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v1, "FT69311"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "starId"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendDownloadOpLog | starId or entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_star"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    const-string/jumbo v1, "FT69309"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendDownloadOpLog | starId or entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 68
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3
    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string/jumbo v0, "d_speaker"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "FT69313"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const-string/jumbo v0, "d_star"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "FT69308"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendEntryOpLog | entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v1, "FT69322"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "voiceBaseModel"    # Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;
    .param p2, "entry"    # Ljava/lang/String;
    .param p3, "typeEntry"    # Ljava/lang/String;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_0
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendDownloadOpLog | starId or entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 91
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3
    const-string/jumbo v0, "0"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string/jumbo v0, "d_speaker"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "FT69314"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    const-string/jumbo v0, "d_star"

    invoke-virtual {p1}, Lcom/iflytek/viafly/voicerole/model/VoiceBaseModel;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v1, "FT69310"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "HumMusicOpLogHelper"

    const-string/jumbo v1, "appendEntryOpLog | entry is null or empty"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v1, "FT69323"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 6
    .param p1, "jumpLocation"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_type"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "FT69318"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v5, "extraParam":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_position"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v1, "FT69319"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 172
    return-void
.end method
