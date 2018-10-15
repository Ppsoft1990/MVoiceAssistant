.class final Lcom/iflytek/blc/getconfig/GetConfigProxy$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/blc/getconfig/NativeGetConfigObserver;


# instance fields
.field final synthetic a:Lcom/iflytek/blc/getconfig/GetConfigObserver;


# direct methods
.method constructor <init>(Lcom/iflytek/blc/getconfig/GetConfigObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;->a:Lcom/iflytek/blc/getconfig/GetConfigObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnGetConfigUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "GetConfigProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "OnGetConfigUpdated | code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", values = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;->a:Lcom/iflytek/blc/getconfig/GetConfigObserver;

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/iflytek/blc/util/JsonUtil;->getList4Json(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;->a:Lcom/iflytek/blc/getconfig/GetConfigObserver;

    invoke-interface {v1, p1, p2, v0}, Lcom/iflytek/blc/getconfig/GetConfigObserver;->OnGetConfigUpdated(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final onGetConfigFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;->a:Lcom/iflytek/blc/getconfig/GetConfigObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/getconfig/GetConfigProxy$1;->a:Lcom/iflytek/blc/getconfig/GetConfigObserver;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/blc/getconfig/GetConfigObserver;->onGetConfigFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
