.class public Laly;
.super Ljava/lang/Object;
.source "SignInfoResultHandler.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "SigninfoResultHandler"

    iput-object v0, p0, Laly;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lalx;
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v6

    .line 47
    :goto_0
    return-object v3

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 25
    .local v3, "signInfo":Lalx;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "resultObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "result"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "resultString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    const-string/jumbo v7, "SigninfoResultHandler"

    const-string/jumbo v8, "result is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v5, "signResult":Lorg/json/JSONObject;
    const-string/jumbo v7, "score"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "totalscore"

    .line 34
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "signed"

    .line 35
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 36
    :cond_2
    const-string/jumbo v7, "SigninfoResultHandler"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 37
    goto :goto_0

    .line 40
    :cond_3
    new-instance v4, Lalx;

    invoke-direct {v4}, Lalx;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v3    # "signInfo":Lalx;
    .local v4, "signInfo":Lalx;
    :try_start_1
    const-string/jumbo v6, "score"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalx;->a(I)V

    .line 42
    const-string/jumbo v6, "signed"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lalx;->a(Z)V

    .line 43
    const-string/jumbo v6, "totalscore"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalx;->b(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 46
    .end local v4    # "signInfo":Lalx;
    .restart local v3    # "signInfo":Lalx;
    goto :goto_0

    .line 44
    .end local v1    # "resultObj":Lorg/json/JSONObject;
    .end local v2    # "resultString":Ljava/lang/String;
    .end local v5    # "signResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v6, "SigninfoResultHandler"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "signInfo":Lalx;
    .restart local v1    # "resultObj":Lorg/json/JSONObject;
    .restart local v2    # "resultString":Ljava/lang/String;
    .restart local v4    # "signInfo":Lalx;
    .restart local v5    # "signResult":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "signInfo":Lalx;
    .restart local v3    # "signInfo":Lalx;
    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lalz;
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v3, v6

    .line 96
    :goto_0
    return-object v3

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 57
    .local v3, "signInfo":Lalz;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "resultObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "result"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "resultString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    const-string/jumbo v7, "SigninfoResultHandler"

    const-string/jumbo v8, "result is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v5, "signResult":Lorg/json/JSONObject;
    const-string/jumbo v7, "opcode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "score"

    .line 66
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "totalscore"

    .line 67
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "addscore"

    .line 68
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "islimitofnext"

    .line 69
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "limitrange"

    .line 70
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "expiretime"

    .line 71
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "addgrowthvalue"

    .line 72
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "growthvalue"

    .line 73
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "level"

    .line 74
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    :cond_2
    const-string/jumbo v7, "SigninfoResultHandler"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 78
    goto/16 :goto_0

    .line 81
    :cond_3
    new-instance v4, Lalz;

    invoke-direct {v4}, Lalz;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v3    # "signInfo":Lalz;
    .local v4, "signInfo":Lalz;
    :try_start_1
    const-string/jumbo v6, "opcode"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lalz;->a(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v6, "score"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->a(I)V

    .line 84
    const-string/jumbo v6, "totalscore"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->b(I)V

    .line 85
    const-string/jumbo v6, "addscore"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->c(I)V

    .line 86
    const-string/jumbo v6, "islimitofnext"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->a(Z)V

    .line 87
    const-string/jumbo v6, "limitrange"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lalz;->b(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v6, "expiretime"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->d(I)V

    .line 89
    const-string/jumbo v6, "addgrowthvalue"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->e(I)V

    .line 90
    const-string/jumbo v6, "growthvalue"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->f(I)V

    .line 91
    const-string/jumbo v6, "level"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lalz;->g(I)V

    .line 92
    const-string/jumbo v6, "medal"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lalz;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 95
    .end local v4    # "signInfo":Lalz;
    .restart local v3    # "signInfo":Lalz;
    goto/16 :goto_0

    .line 93
    .end local v1    # "resultObj":Lorg/json/JSONObject;
    .end local v2    # "resultString":Ljava/lang/String;
    .end local v5    # "signResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v6, "SigninfoResultHandler"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 93
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "signInfo":Lalz;
    .restart local v1    # "resultObj":Lorg/json/JSONObject;
    .restart local v2    # "resultString":Ljava/lang/String;
    .restart local v4    # "signInfo":Lalz;
    .restart local v5    # "signResult":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "signInfo":Lalz;
    .restart local v3    # "signInfo":Lalz;
    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Lalu;
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v6

    .line 127
    :goto_0
    return-object v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    .line 106
    .local v1, "opCodesData":Lalu;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v4, "resultObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "result"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "resultString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    const-string/jumbo v7, "SigninfoResultHandler"

    const-string/jumbo v8, "result is null"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 110
    goto :goto_0

    .line 113
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, "opCodesObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "expiretime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "isclearcache"

    .line 115
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 116
    :cond_2
    const-string/jumbo v7, "SigninfoResultHandler"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 117
    goto :goto_0

    .line 120
    :cond_3
    new-instance v2, Lalu;

    invoke-direct {v2}, Lalu;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "opCodesData":Lalu;
    .local v2, "opCodesData":Lalu;
    :try_start_1
    const-string/jumbo v6, "expiretime"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Lalu;->a(I)V

    .line 122
    const-string/jumbo v6, "isclearcache"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lalu;->a(Z)V

    .line 123
    const-string/jumbo v6, "opcodes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lalu;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 126
    .end local v2    # "opCodesData":Lalu;
    .restart local v1    # "opCodesData":Lalu;
    goto :goto_0

    .line 124
    .end local v3    # "opCodesObj":Lorg/json/JSONObject;
    .end local v4    # "resultObj":Lorg/json/JSONObject;
    .end local v5    # "resultString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    :goto_1
    const-string/jumbo v6, "SigninfoResultHandler"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 124
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "opCodesData":Lalu;
    .restart local v2    # "opCodesData":Lalu;
    .restart local v3    # "opCodesObj":Lorg/json/JSONObject;
    .restart local v4    # "resultObj":Lorg/json/JSONObject;
    .restart local v5    # "resultString":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "opCodesData":Lalu;
    .restart local v1    # "opCodesData":Lalu;
    goto :goto_1
.end method
