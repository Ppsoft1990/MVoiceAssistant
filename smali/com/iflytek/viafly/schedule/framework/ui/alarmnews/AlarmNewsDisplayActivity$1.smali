.class Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;
.super Ljava/lang/Object;
.source "AlarmNewsDisplayActivity.java"

# interfaces
.implements Lwd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJI)V
    .locals 4
    .param p1, "requestType"    # I
    .param p2, "requestId"    # J
    .param p4, "errorCode"    # I

    .prologue
    .line 107
    const-string/jumbo v0, "AlarmNewsDisplayActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorrequestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V

    .line 110
    return-void
.end method

.method public a(Lwa;)V
    .locals 9
    .param p1, "result"    # Lwa;

    .prologue
    .line 77
    invoke-virtual {p1}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "resultInfo":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 80
    :cond_0
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V

    .line 103
    :goto_0
    return-void

    .line 84
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "error_code"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "errorCode":Ljava/lang/String;
    const-string/jumbo v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v7, "000000"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "success"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 88
    :cond_2
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "AlarmNewsDisplayActivity"

    const-string/jumbo v8, "JSONException"

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V

    goto :goto_0

    .line 91
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "status":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v7, "result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    const-string/jumbo v8, "news"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 92
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 93
    .local v4, "length":I
    const/4 v7, 0x4

    if-ge v4, v7, :cond_4

    .line 94
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;)V

    goto :goto_0

    .line 96
    :cond_4
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;

    invoke-static {v7, v5}, Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/alarmnews/AlarmNewsDisplayActivity;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
