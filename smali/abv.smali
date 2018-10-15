.class public Labv;
.super Ljava/lang/Object;
.source "SmsOpLogUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Labv;->b:J

    .line 48
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labv;->c:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 74
    sget-wide v0, Labv;->b:J

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .param p0, "opCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "customParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "FD01001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01002"

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01003"

    .line 233
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01004"

    .line 234
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01005"

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01006"

    .line 236
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01007"

    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD01008"

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02001"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02002"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02003"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02004"

    .line 242
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02005"

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02006"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02007"

    .line 245
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02008"

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02009"

    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02010"

    .line 248
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02011"

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02012"

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FD02013"

    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    invoke-static {}, Labv;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_1
    return-object p1
.end method

.method public static a(J)V
    .locals 0
    .param p0, "starttime"    # J

    .prologue
    .line 65
    sput-wide p0, Labv;->b:J

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 9
    .param p0, "opCode"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 83
    const-string/jumbo v1, "SmsOpLogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string/jumbo v1, "SC02014"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Labv;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 86
    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_1

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    sget-object v1, Labv;->c:[I

    aput v4, v1, v0

    goto :goto_1

    .line 92
    :cond_2
    const-string/jumbo v1, "other"

    invoke-static {v1}, Labv;->b(Ljava/lang/String;)V

    .line 101
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 93
    :cond_4
    const-string/jumbo v1, "SC02015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v1, Labv;->c:[I

    aput v4, v1, v5

    .line 95
    sget-object v1, Labv;->c:[I

    aput v4, v1, v6

    .line 96
    sget-object v1, Labv;->c:[I

    aput v4, v1, v7

    .line 97
    sget-object v1, Labv;->c:[I

    aput v4, v1, v8

    .line 98
    const-string/jumbo v1, "other"

    invoke-static {v1}, Labv;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string/jumbo v0, "SmsOpLogUtil"

    const-string/jumbo v1, "getCloseType"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 136
    const-string/jumbo v0, "other"

    .line 150
    :goto_0
    return-object v0

    .line 137
    :cond_0
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 138
    const-string/jumbo v0, "close"

    goto :goto_0

    .line 139
    :cond_1
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 140
    const-string/jumbo v0, "contact"

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 142
    const-string/jumbo v0, "delete"

    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 144
    const-string/jumbo v0, "send"

    goto :goto_0

    .line 145
    :cond_4
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 146
    const-string/jumbo v0, "call"

    goto :goto_0

    .line 147
    :cond_5
    sget-object v0, Labv;->c:[I

    aget v0, v0, v2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 148
    const-string/jumbo v0, "cancel"

    goto :goto_0

    .line 150
    :cond_6
    const-string/jumbo v0, "other"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string/jumbo v0, "SmsOpLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCloseType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Labv;->c:[I

    aput v3, v0, v3

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v0, "close"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x1

    aput v1, v0, v3

    goto :goto_0

    .line 114
    :cond_2
    const-string/jumbo v0, "contact"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x2

    aput v1, v0, v3

    goto :goto_0

    .line 116
    :cond_3
    const-string/jumbo v0, "delete"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x3

    aput v1, v0, v3

    goto :goto_0

    .line 118
    :cond_4
    const-string/jumbo v0, "send"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x4

    aput v1, v0, v3

    goto :goto_0

    .line 120
    :cond_5
    const-string/jumbo v0, "call"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 121
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x5

    aput v1, v0, v3

    goto :goto_0

    .line 122
    :cond_6
    const-string/jumbo v0, "cancel"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x6

    aput v1, v0, v3

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string/jumbo v0, "SmsOpLogUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "appenOperation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string/jumbo v0, "micclicktime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const-string/jumbo v0, "rebroadcasttime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 165
    :cond_2
    const-string/jumbo v0, "stopbroadcasttime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 167
    :cond_3
    const-string/jumbo v0, "micstarttime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x4

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 169
    :cond_4
    const-string/jumbo v0, "smsopenautonotify"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x5

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 171
    :cond_5
    const-string/jumbo v0, "smscloseautonotify"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x6

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 173
    :cond_6
    const-string/jumbo v0, "smsopensettingbtn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    sget-object v0, Labv;->c:[I

    const/4 v1, 0x7

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_0

    .line 175
    :cond_7
    const-string/jumbo v0, "smsclickmicclosebtn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 176
    sget-object v0, Labv;->c:[I

    const/16 v1, 0x8

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_0

    .line 177
    :cond_8
    const-string/jumbo v0, "smsclickmicdlgspeekoverbtn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 178
    sget-object v0, Labv;->c:[I

    const/16 v1, 0x9

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_0

    .line 179
    :cond_9
    const-string/jumbo v0, "smsclickmicdlgcancelbtn"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    sget-object v0, Labv;->c:[I

    const/16 v1, 0xa

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_0

    .line 181
    :cond_a
    const-string/jumbo v0, "smssavecontacttime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    sget-object v0, Labv;->c:[I

    const/16 v1, 0xb

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_0

    .line 183
    :cond_b
    const-string/jumbo v0, "sms_click_change_contacts"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Labv;->c:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto/16 :goto_0
.end method

.method public static c()[I
    .locals 2

    .prologue
    .line 211
    const-string/jumbo v0, "SmsOpLogUtil"

    const-string/jumbo v1, "getSmsOpLogData"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Labv;->c:[I

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v0, ""

    sput-object v0, Labv;->a:Ljava/lang/String;

    .line 217
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "online_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labv;->a:Ljava/lang/String;

    .line 222
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Labb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labv;->a:Ljava/lang/String;

    .line 223
    sget-object v0, Labv;->a:Ljava/lang/String;

    return-object v0

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Labv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "offline_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labv;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Labb;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
