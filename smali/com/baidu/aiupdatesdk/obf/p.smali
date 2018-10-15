.class public Lcom/baidu/aiupdatesdk/obf/p;
.super Ljava/lang/Object;
.source "ProtocolCoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/p;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/p;->b:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private static a([B[B)[B
    .locals 3
    .param p0, "key"    # [B
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    if-nez p0, :cond_0

    .line 279
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid Session"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/s;

    invoke-direct {v0, p0}, Lcom/baidu/aiupdatesdk/obf/s;-><init>([B)V

    .line 282
    .local v0, "des":Lcom/baidu/aiupdatesdk/obf/s;
    invoke-virtual {v0, p1}, Lcom/baidu/aiupdatesdk/obf/s;->a([B)[B

    move-result-object v1

    return-object v1
.end method

.method private b([B)Lorg/json/JSONObject;
    .locals 2
    .param p1, "decodedBody"    # [B

    .prologue
    .line 129
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    :try_start_0
    const-string/jumbo v1, "utf-8"

    invoke-static {p1, v1}, Lcom/baidu/aiupdatesdk/obf/aa;->a([BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-object v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultCode2"    # I
    .param p2, "resultDesc2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p3, "extraData2":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ACT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/aiupdatesdk/obf/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/aiupdatesdk/obf/p;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultDesc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/ab;->c(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private static b([B[B)[B
    .locals 5
    .param p0, "trippleDesKey"    # [B
    .param p1, "buffer"    # [B

    .prologue
    .line 286
    if-nez p0, :cond_0

    .line 287
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid Session"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_0
    array-length v3, p1

    new-array v2, v3, [B

    .line 292
    .local v2, "result":[B
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/s;

    invoke-direct {v0, p0}, Lcom/baidu/aiupdatesdk/obf/s;-><init>([B)V

    .line 294
    .local v0, "des":Lcom/baidu/aiupdatesdk/obf/s;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/baidu/aiupdatesdk/obf/s;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 298
    :goto_0
    return-object v2

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private c([B)[B
    .locals 1
    .param p1, "raw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    if-nez p1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "78ce10521a046e95ed8c5bc1bba12a6029bee2769576d532"

    .line 272
    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/w;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/baidu/aiupdatesdk/obf/p;->a([B[B)[B

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/r;->a([B)[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 196
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->d()Landroid/content/Context;

    move-result-object v0

    .line 200
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "bdp_update_request_net_error"

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 220
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->d()Landroid/content/Context;

    move-result-object v0

    .line 224
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "bdp_update_request_net_error"

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method final a(ILjava/lang/String;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;

    .prologue
    .line 77
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    iput p1, p0, Lcom/baidu/aiupdatesdk/obf/p;->d:I

    .line 78
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/p;->e:Ljava/lang/String;

    .line 79
    return-void
.end method

.method final a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p3, "extraData":Ljava/lang/Object;, "TT;"
    iput p1, p0, Lcom/baidu/aiupdatesdk/obf/p;->d:I

    .line 83
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/p;->e:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/baidu/aiupdatesdk/obf/p;->f:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method final a(Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p1, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    return-void
.end method

.method public final a(S)V
    .locals 0
    .param p1, "actionID"    # S

    .prologue
    .line 107
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    iput p1, p0, Lcom/baidu/aiupdatesdk/obf/p;->c:I

    .line 108
    return-void
.end method

.method final a([B)V
    .locals 14
    .param p1, "buffer"    # [B

    .prologue
    .line 138
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-direct {p0, p1}, Lcom/baidu/aiupdatesdk/obf/p;->b([B)Lorg/json/JSONObject;

    move-result-object v7

    .line 139
    .local v7, "object":Lorg/json/JSONObject;
    if-nez v7, :cond_0

    .line 141
    const/4 v12, -0x2

    const-string/jumbo v13, "json error"

    invoke-virtual {p0, v13}, Lcom/baidu/aiupdatesdk/obf/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string/jumbo v12, "ResultCode"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "bodyResultCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 147
    const/4 v12, -0x2

    const-string/jumbo v13, "ResultCode"

    invoke-virtual {p0, v13}, Lcom/baidu/aiupdatesdk/obf/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    const/4 v9, -0x2

    .line 153
    .local v9, "opResultCode":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 160
    const-string/jumbo v12, "ResultMsg"

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "opErrprDesc":Ljava/lang/String;
    const/16 v12, 0x2710

    if-eq v9, v12, :cond_2

    .line 162
    invoke-virtual {p0, v9, v8}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 165
    :cond_2
    const/4 v4, 0x0

    .line 166
    .local v4, "contentJson":Ljava/lang/String;
    const/4 v2, 0x0

    .line 168
    .local v2, "content":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v12, "Content"

    const-string/jumbo v13, ""

    invoke-virtual {v7, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "utf-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/aiupdatesdk/obf/r;->b([B)[B

    move-result-object v1

    .line 169
    .local v1, "by":[B
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v12, "78ce10521a046e95ed8c5bc1bba12a6029bee2769576d532"

    .line 170
    invoke-static {v12}, Lcom/baidu/aiupdatesdk/obf/w;->a(Ljava/lang/String;)[B

    move-result-object v12

    .line 169
    invoke-static {v12, v1}, Lcom/baidu/aiupdatesdk/obf/p;->b([B[B)[B

    move-result-object v12

    const-string/jumbo v13, "utf-8"

    invoke-direct {v5, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .end local v4    # "contentJson":Ljava/lang/String;
    .local v5, "contentJson":Ljava/lang/String;
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "content":Lorg/json/JSONObject;
    .local v3, "content":Lorg/json/JSONObject;
    move-object v2, v3

    .end local v3    # "content":Lorg/json/JSONObject;
    .restart local v2    # "content":Lorg/json/JSONObject;
    move-object v4, v5

    .line 175
    .end local v1    # "by":[B
    .end local v5    # "contentJson":Ljava/lang/String;
    .restart local v4    # "contentJson":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_3

    .line 176
    const/4 v12, -0x2

    const-string/jumbo v13, "Content"

    invoke-virtual {p0, v13}, Lcom/baidu/aiupdatesdk/obf/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    .line 184
    :cond_3
    new-instance v10, Lcom/baidu/aiupdatesdk/obf/o;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Lcom/baidu/aiupdatesdk/obf/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .local v10, "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;TT;>;"
    invoke-virtual {p0, v9, v10, v2}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILcom/baidu/aiupdatesdk/obf/o;Lorg/json/JSONObject;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 187
    const/4 v13, -0x2

    iget-object v12, v10, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v13, v12}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v2    # "content":Lorg/json/JSONObject;
    .end local v4    # "contentJson":Ljava/lang/String;
    .end local v8    # "opErrprDesc":Ljava/lang/String;
    .end local v10    # "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;TT;>;"
    :catch_0
    move-exception v6

    .line 156
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v12, -0x2

    const-string/jumbo v13, "ResultCode"

    invoke-virtual {p0, v13}, Lcom/baidu/aiupdatesdk/obf/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "content":Lorg/json/JSONObject;
    .restart local v4    # "contentJson":Ljava/lang/String;
    .restart local v8    # "opErrprDesc":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v10    # "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;TT;>;"
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object v11, v8

    .line 191
    .local v11, "resultDesc":Ljava/lang/String;
    :goto_3
    iget-object v12, v10, Lcom/baidu/aiupdatesdk/obf/o;->b:Ljava/lang/Object;

    invoke-virtual {p0, v9, v11, v12}, Lcom/baidu/aiupdatesdk/obf/p;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 190
    .end local v11    # "resultDesc":Ljava/lang/String;
    :cond_5
    iget-object v12, v10, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    goto :goto_3

    .line 172
    .end local v4    # "contentJson":Ljava/lang/String;
    .end local v10    # "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;TT;>;"
    .restart local v1    # "by":[B
    .restart local v5    # "contentJson":Ljava/lang/String;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "contentJson":Ljava/lang/String;
    .restart local v4    # "contentJson":Ljava/lang/String;
    goto :goto_2
.end method

.method public a(ILcom/baidu/aiupdatesdk/obf/o;Lorg/json/JSONObject;)Z
    .locals 1
    .param p1, "resultCode"    # I
    .param p3, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/aiupdatesdk/obf/o",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p2, "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method final b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 57
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/p;->a:Ljava/lang/String;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/p;->a:Ljava/lang/String;

    const-string/jumbo v2, "_ActionID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/baidu/aiupdatesdk/obf/p;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "_Ver"

    const-string/jumbo v3, "1.3.2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 204
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->d()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "bdp_update_request_net_error"

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method final b(Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    .local p1, "callback":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    :try_start_0
    iget v1, p0, Lcom/baidu/aiupdatesdk/obf/p;->d:I

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/p;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/p;->f:Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/aiupdatesdk/obf/p;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget v1, p0, Lcom/baidu/aiupdatesdk/obf/p;->d:I

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/p;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/p;->f:Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lcom/baidu/aiupdatesdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 212
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->d()Landroid/content/Context;

    move-result-object v0

    .line 216
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "bdp_update_request_net_error"

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/t;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/p;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    iget v0, p0, Lcom/baidu/aiupdatesdk/obf/p;->d:I

    return v0
.end method

.method public f()[B
    .locals 2

    .prologue
    .line 244
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->g()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/aiupdatesdk/obf/p;->c([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    .line 249
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final g()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/p;, "Lcom/baidu/aiupdatesdk/obf/p<TT;>;"
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/obf/p;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 254
    .local v1, "object":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 255
    .local v0, "json":[B
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "payload":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Post: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 262
    .end local v2    # "payload":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 260
    :cond_0
    const-string/jumbo v3, "Post: NULL"

    invoke-static {v3}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
