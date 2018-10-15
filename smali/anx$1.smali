.class Lanx$1;
.super Ljava/lang/Object;
.source "HomeMiguTokenHelper.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanx;


# direct methods
.method constructor <init>(Lanx;)V
    .locals 0
    .param p1, "this$0"    # Lanx;

    .prologue
    .line 127
    iput-object p1, p0, Lanx$1;->a:Lanx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 22
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 131
    const/4 v15, 0x0

    invoke-static {v15}, Lanx;->d(Z)V

    .line 132
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 133
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-virtual/range {p2 .. p2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "response":Ljava/lang/String;
    const-string/jumbo v15, "HomeMiguTokenHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "thrid token response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 137
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    .local v10, "json":Lorg/json/JSONObject;
    const-string/jumbo v15, "error_code"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, "error_code":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "000000"

    .line 140
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 141
    const-string/jumbo v15, "result"

    .line 142
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 143
    .local v13, "resultJson":Lorg/json/JSONObject;
    if-eqz v13, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 145
    .local v4, "currenttime":J
    const-string/jumbo v15, "expiretime"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 146
    .local v8, "expiretime":J
    const-string/jumbo v15, "sstoken"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 147
    .local v14, "sstoken":Ljava/lang/String;
    const-string/jumbo v15, "ltoken"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 148
    .local v11, "ltoken":Ljava/lang/String;
    const-string/jumbo v15, "HomeMiguTokenHelper"

    const-string/jumbo v18, "Migu+ loginId get success"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Laod;->a()Laod;

    move-result-object v15

    invoke-virtual {v15, v14}, Laod;->a(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Laod;->a()Laod;

    move-result-object v15

    invoke-virtual {v15, v11}, Laod;->b(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Laod;->a()Laod;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Laod;->a(J)V

    .line 152
    invoke-static {}, Laod;->a()Laod;

    move-result-object v15

    invoke-virtual {v15}, Laod;->h()V

    .line 153
    sub-long v16, v8, v4

    .line 154
    .local v16, "time":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lanx$1;->a:Lanx;

    const/16 v18, 0x1

    move/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v15, v0, v1, v2}, Lanx;->a(IJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v4    # "currenttime":J
    .end local v7    # "error_code":Ljava/lang/String;
    .end local v8    # "expiretime":J
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "ltoken":Ljava/lang/String;
    .end local v12    # "response":Ljava/lang/String;
    .end local v13    # "resultJson":Lorg/json/JSONObject;
    .end local v14    # "sstoken":Ljava/lang/String;
    .end local v16    # "time":J
    :goto_0
    return-void

    .line 158
    .restart local v12    # "response":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 159
    .local v6, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lanx$1;->a:Lanx;

    const/16 v18, 0x1

    const-wide/32 v20, 0x1b7740

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Lanx;->a(IJ)V

    goto :goto_0

    .line 164
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v12    # "response":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lanx$1;->a:Lanx;

    const/16 v18, 0x1

    const-wide/32 v20, 0x1b7740

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Lanx;->a(IJ)V

    goto :goto_0
.end method
