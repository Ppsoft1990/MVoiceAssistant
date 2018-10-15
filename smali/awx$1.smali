.class Lawx$1;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneRequestManager.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawx;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawx;


# direct methods
.method constructor <init>(Lawx;)V
    .locals 0
    .param p1, "this$0"    # Lawx;

    .prologue
    .line 48
    iput-object p1, p0, Lawx$1;->a:Lawx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 13
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 51
    iget-object v7, p0, Lawx$1;->a:Lawx;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lawx;->a(Lawx;J)J

    .line 53
    const-string/jumbo v7, "PersonalizedRingtoneRequestManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onResult() errorCode= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " result= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " requestId= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "requestType= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v7, p2, Lwa;

    if-nez v7, :cond_2

    .line 58
    :cond_0
    const-string/jumbo v7, "PersonalizedRingtoneRequestManager"

    const-string/jumbo v8, "errorcode or result illegal"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 60
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    invoke-interface {v7, p1}, Lawx$a;->a(I)V

    .line 97
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v4, p2

    .line 64
    check-cast v4, Lwa;

    .line 65
    .local v4, "netResult":Lwa;
    invoke-virtual {v4}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "jsonResult":Ljava/lang/String;
    new-instance v5, Laww;

    invoke-direct {v5}, Laww;-><init>()V

    .line 68
    .local v5, "parser":Laww;
    invoke-virtual {v5, v3}, Laww;->a(Ljava/lang/String;)Lawv;

    move-result-object v2

    .line 69
    .local v2, "bizResult":Lawv;
    if-eqz v2, :cond_3

    const-string/jumbo v7, "success"

    invoke-virtual {v2}, Lawv;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 70
    :cond_3
    const-string/jumbo v7, "PersonalizedRingtoneRequestManager"

    const-string/jumbo v8, "bizResult or status illegal"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 72
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    invoke-interface {v7, p1}, Lawx$a;->a(I)V

    goto :goto_0

    .line 77
    :cond_4
    invoke-static {}, Lil;->a()Lil;

    move-result-object v7

    const-string/jumbo v8, "LAST_REQUEST_SUCCESS_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lil;->a(Ljava/lang/String;J)V

    .line 79
    invoke-virtual {v2}, Lawv;->a()Ljava/util/List;

    move-result-object v6

    .line 82
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;>;"
    invoke-static {v6}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 83
    const-string/jumbo v7, "PersonalizedRingtoneRequestManager"

    const-string/jumbo v8, "result list empty"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 86
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    invoke-interface {v7, p1}, Lawx$a;->a(I)V

    goto :goto_0

    .line 91
    :cond_5
    const-string/jumbo v7, "PersonalizedRingtoneRequestManager"

    const-string/jumbo v8, "net data legal, save it"

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->b(Lawx;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lawu;->a(Landroid/content/Context;)Lawu;

    move-result-object v7

    invoke-virtual {v7, v6}, Lawu;->a(Ljava/util/List;)V

    .line 94
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 95
    iget-object v7, p0, Lawx$1;->a:Lawx;

    invoke-static {v7}, Lawx;->a(Lawx;)Lawx$a;

    move-result-object v7

    invoke-interface {v7, v6}, Lawx$a;->a(Ljava/util/List;)V

    goto/16 :goto_0
.end method
