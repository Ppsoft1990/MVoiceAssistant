.class public final Lcom/iflytek/viafly/util/IflyStringUtil;
.super Ljava/lang/Object;
.source "IflyStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/util/IflyStringUtil$REGEX_ENUM;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\u5341\u4e09"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\u5341\u56db"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\u5341\u4e94"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\u5341\u516d"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\u5341\u4e03"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\u5341\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\u5341\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\u4e8c\u5341"

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/viafly/util/IflyStringUtil;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # I

    .prologue
    .line 266
    const/16 v0, 0x13

    if-gt p0, v0, :cond_0

    if-gez p0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/iflytek/viafly/util/IflyStringUtil;->a:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filterStr"    # Ljava/lang/String;
    .param p1, "matchStr"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v2, "[^a-zA-Z0-9\u4e00-\u9fbf]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 164
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 165
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static a([Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .param p0, "items"    # [Ljava/lang/String;
    .param p1, "ch"    # C

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1

    .line 177
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 178
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 498
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 506
    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .line 501
    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 502
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 503
    const/4 v2, 0x0

    goto :goto_0

    .line 501
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .prologue
    .line 1260
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string/jumbo v3, "(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 58
    .local v2, "pattern":Ljava/util/regex/Pattern;
    :try_start_0
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 59
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 63
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :goto_0
    return v3

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const-string/jumbo v4, "patternPhoneNumber()"

    invoke-static {v3, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 194
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    const v10, 0x7fffffff

    .line 223
    :goto_0
    return v10

    .line 198
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 199
    .local v6, "sourceChars":[C
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 200
    .local v8, "targetChars":[C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 201
    .local v5, "sLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 202
    .local v7, "tLength":I
    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v11, v7, 0x1

    filled-new-array {v10, v11}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 203
    .local v1, "distance":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-gt v2, v5, :cond_2

    .line 204
    aget-object v10, v1, v2

    aput v2, v10, v12

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-gt v2, v7, :cond_3

    .line 207
    aget-object v10, v1, v12

    aput v2, v10, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 210
    :cond_3
    const/4 v2, 0x1

    :goto_3
    if-gt v2, v5, :cond_7

    .line 211
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_4
    if-gt v4, v7, :cond_6

    .line 212
    add-int/lit8 v10, v2, -0x1

    aget-char v10, v6, v10

    add-int/lit8 v11, v4, -0x1

    aget-char v11, v8, v11

    if-ne v10, v11, :cond_4

    .line 213
    aget-object v10, v1, v2

    add-int/lit8 v11, v2, -0x1

    aget-object v11, v1, v11

    add-int/lit8 v12, v4, -0x1

    aget v11, v11, v12

    aput v11, v10, v4

    .line 211
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 215
    :cond_4
    aget-object v10, v1, v2

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    add-int/lit8 v3, v10, 0x1

    .line 216
    .local v3, "insert":I
    add-int/lit8 v10, v2, -0x1

    aget-object v10, v1, v10

    aget v10, v10, v4

    add-int/lit8 v0, v10, 0x1

    .line 217
    .local v0, "delete":I
    add-int/lit8 v10, v2, -0x1

    aget-object v10, v1, v10

    add-int/lit8 v11, v4, -0x1

    aget v10, v10, v11

    add-int/lit8 v9, v10, 0x1

    .line 218
    .local v9, "update":I
    aget-object v11, v1, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-le v10, v12, :cond_5

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 219
    :goto_6
    aput v10, v11, v4

    goto :goto_5

    :cond_5
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_6

    .line 210
    .end local v0    # "delete":I
    .end local v3    # "insert":I
    .end local v9    # "update":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 223
    .end local v4    # "j":I
    :cond_7
    aget-object v10, v1, v5

    aget v10, v10, v7

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    if-nez p0, :cond_1

    .line 73
    const/4 p0, 0x0

    .line 78
    :cond_0
    :goto_0
    return-object p0

    .line 75
    :cond_1
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, " "

    const-string/jumbo v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 528
    invoke-static {p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1291
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1292
    :cond_0
    if-ne p0, p1, :cond_1

    .line 1294
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1292
    goto :goto_0

    .line 1295
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    .line 1294
    invoke-static/range {v0 .. v5}, Lbae;->a(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 233
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 234
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1

    .line 235
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_0

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_0

    .line 239
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1

    .line 241
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static c(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1117
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .prologue
    .line 1779
    if-nez p0, :cond_1

    .line 1780
    if-nez p1, :cond_0

    .line 1781
    const/4 v0, 0x1

    .line 1786
    :goto_0
    return v0

    .line 1783
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1786
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 279
    :cond_0
    const-string/jumbo v3, "#"

    .line 296
    :goto_0
    return-object v3

    .line 282
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 284
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 285
    .local v0, "ch":C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_4

    move v1, v2

    .line 286
    .local v1, "isLower":Z
    :goto_1
    const/16 v4, 0x41

    if-lt v0, v4, :cond_5

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_5

    .line 288
    .local v2, "isUpper":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 289
    add-int/lit8 v3, v0, -0x20

    int-to-char v0, v3

    .line 292
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_6

    .line 293
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v1    # "isLower":Z
    .end local v2    # "isUpper":Z
    :cond_4
    move v1, v3

    .line 285
    goto :goto_1

    .restart local v1    # "isLower":Z
    :cond_5
    move v2, v3

    .line 286
    goto :goto_2

    .line 296
    .end local v0    # "ch":C
    .end local v1    # "isLower":Z
    :cond_6
    const-string/jumbo v3, "#"

    goto :goto_0
.end method

.method public static d(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1142
    invoke-static {p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1173
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1204
    invoke-static {p0}, Lcom/iflytek/viafly/util/IflyStringUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1205
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "ts":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1232
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
