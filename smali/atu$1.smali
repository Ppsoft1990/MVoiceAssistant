.class Latu$1;
.super Ljava/lang/Object;
.source "PushShowHelper.java"

# interfaces
.implements Loe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Latu;


# direct methods
.method constructor <init>(Latu;)V
    .locals 0
    .param p1, "this$0"    # Latu;

    .prologue
    .line 56
    iput-object p1, p0, Latu$1;->a:Latu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 60
    const-string/jumbo v0, "PushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick(), param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Latu$1;->a:Latu;

    invoke-virtual {v0, p1}, Latu;->a(Lcom/iflytek/common/notice/NotificationParam;)V

    .line 65
    iget-object v0, p0, Latu$1;->a:Latu;

    iget-object v0, v0, Latu;->a:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_300000"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public a(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "btnResId"    # I

    .prologue
    .line 79
    const-string/jumbo v0, "PushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtnClick(), param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " btnResId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Latu$1;->a:Latu;

    invoke-virtual {v0, p1, p2}, Latu;->a(Lcom/iflytek/common/notice/NotificationParam;I)V

    .line 83
    :cond_0
    return-void
.end method

.method public b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 71
    const-string/jumbo v0, "PushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick(), param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Latu$1;->a:Latu;

    invoke-virtual {v0, p1}, Latu;->b(Lcom/iflytek/common/notice/NotificationParam;)V

    .line 75
    :cond_0
    return-void
.end method
