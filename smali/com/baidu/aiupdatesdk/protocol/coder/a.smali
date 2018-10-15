.class public Lcom/baidu/aiupdatesdk/protocol/coder/a;
.super Lcom/baidu/aiupdatesdk/obf/p;
.source "CheckAppUpdateCoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/aiupdatesdk/obf/p",
        "<",
        "Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/baidu/aiupdatesdk/obf/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/protocol/coder/a;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;

    const-string/jumbo v1, "http://srsdk.baidu.com/appuapi/callapi?ActionID=_ActionID&Ver=_Ver&Source=3"

    invoke-direct {v0, p0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    .local v0, "coder":Lcom/baidu/aiupdatesdk/protocol/coder/a;
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->a(S)V

    .line 49
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ac;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->a:I

    .line 50
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ac;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->c:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/w;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d:Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->e:Ljava/lang/String;

    .line 54
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->f:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/w;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->g:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/ae;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "wf"

    :goto_0
    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->h:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/y;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/y;->c(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->i:Ljava/lang/String;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->j:Ljava/lang/String;

    .line 59
    return-object v0

    .line 56
    :cond_0
    const-string/jumbo v1, "3g"

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-static {p0}, Lcom/baidu/aiupdatesdk/obf/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 164
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/baidu/aiupdatesdk/obf/m;->a:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    :cond_2
    const-string/jumbo v4, ""

    goto :goto_1
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/aiupdatesdk/obf/af;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "appMD5":Ljava/lang/String;
    new-instance v3, Lcom/baidu/aiupdatesdk/obf/ad;

    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/baidu/aiupdatesdk/obf/ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .local v3, "parser":Lcom/baidu/aiupdatesdk/obf/ad;
    invoke-virtual {v3}, Lcom/baidu/aiupdatesdk/obf/ad;->a()Lcom/baidu/aiupdatesdk/obf/ad;

    .line 69
    new-instance v1, Ljava/io/File;

    iget-object v6, v3, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget-object v6, v6, Lcom/baidu/aiupdatesdk/obf/ad$a;->e:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "installed":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/aiupdatesdk/obf/af;->a(Landroid/content/Context;)J

    move-result-wide v4

    .line 72
    .local v4, "lastModified":J
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 73
    iget-object v6, v3, Lcom/baidu/aiupdatesdk/obf/ad;->a:Lcom/baidu/aiupdatesdk/obf/ad$a;

    iget-object v6, v6, Lcom/baidu/aiupdatesdk/obf/ad$a;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/baidu/aiupdatesdk/obf/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/baidu/aiupdatesdk/obf/af;->a(Landroid/content/Context;J)V

    .line 75
    invoke-virtual {p0}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/baidu/aiupdatesdk/obf/af;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    .end local v4    # "lastModified":J
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "AppId"

    iget v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->a:I

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v6, "AppKey"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v6, "AppPackage"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v6, "AppVersionCode"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v6, "AppSignMD5"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v6, "AppMD5"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v6, "MAC"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v6, "CID"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v6, "BEAR"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v6, "DPI"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string/jumbo v6, "ApiLevel"

    iget-object v7, p0, Lcom/baidu/aiupdatesdk/protocol/coder/a;->j:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    return-object v2
.end method

.method protected a(ILcom/baidu/aiupdatesdk/obf/o;Lorg/json/JSONObject;)Z
    .locals 21
    .param p1, "resultCode"    # I
    .param p3, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/baidu/aiupdatesdk/obf/o",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "result":Lcom/baidu/aiupdatesdk/obf/o;, "Lcom/baidu/aiupdatesdk/obf/o<Ljava/lang/String;Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;>;"
    const/16 v5, 0x2710

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    if-nez p3, :cond_1

    .line 102
    :cond_0
    const/4 v5, 0x1

    .line 156
    :goto_0
    return v5

    .line 104
    :cond_1
    const-string/jumbo v5, "AppSname"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "appSname":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    const-string/jumbo v5, "AppSname"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 107
    const/4 v5, 0x0

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v5, "AppVersionName"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "appVersionName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    const-string/jumbo v5, "AppVersionName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 112
    const/4 v5, 0x0

    goto :goto_0

    .line 114
    :cond_3
    const-string/jumbo v5, "AppPackage"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "appPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    const-string/jumbo v5, "AppPackage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 117
    const/4 v5, 0x0

    goto :goto_0

    .line 119
    :cond_4
    const-string/jumbo v5, "AppVersionCode"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v19

    .line 120
    .local v19, "appVersionCode":Ljava/lang/Number;
    if-nez v19, :cond_5

    .line 121
    const-string/jumbo v5, "AppVersionCode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 122
    const/4 v5, 0x0

    goto :goto_0

    .line 124
    :cond_5
    const-string/jumbo v5, "AppUrl"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "appUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    const-string/jumbo v5, "AppUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 127
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 129
    :cond_6
    const-string/jumbo v5, "AppSize"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v18

    .line 130
    .local v18, "appSize":Ljava/lang/Number;
    if-nez v18, :cond_7

    .line 131
    const-string/jumbo v5, "AppSize"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 132
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 134
    :cond_7
    const-string/jumbo v5, "AppPath"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "appPath":Ljava/lang/String;
    const-string/jumbo v5, "AppPathSize"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v17

    .line 136
    .local v17, "appPathSize":Ljava/lang/Number;
    const-string/jumbo v5, "AppIconUrl"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 137
    .local v12, "appIconUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 138
    const-string/jumbo v5, "AppIconUrl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 139
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 141
    :cond_8
    const-string/jumbo v5, "AppChangeLog"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 142
    .local v13, "appChangeLog":Ljava/lang/String;
    const-string/jumbo v5, "AppMd5"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, "appMd5":Ljava/lang/String;
    const-string/jumbo v5, "ForceUpdate"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v20

    .line 144
    .local v20, "forceUpdate":Ljava/lang/Number;
    if-nez v20, :cond_9

    .line 145
    const-string/jumbo v5, "ForceUpdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/baidu/aiupdatesdk/protocol/coder/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/baidu/aiupdatesdk/obf/o;->a:Ljava/lang/Object;

    .line 146
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 148
    :cond_9
    const-string/jumbo v5, "ChannelId"

    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/baidu/aiupdatesdk/obf/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "channelId":Ljava/lang/String;
    new-instance v1, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;

    .line 151
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 152
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    if-nez v17, :cond_a

    const-wide/16 v10, 0x0

    .line 153
    :goto_1
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v15

    invoke-direct/range {v1 .. v16}, Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    .local v1, "info":Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    move-object/from16 v0, p2

    iput-object v1, v0, Lcom/baidu/aiupdatesdk/obf/o;->b:Ljava/lang/Object;

    .line 156
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 152
    .end local v1    # "info":Lcom/baidu/aiupdatesdk/protocol/coder/AppUpdateInfo;
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    goto :goto_1
.end method
