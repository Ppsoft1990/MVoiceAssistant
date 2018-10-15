.class Lacz$1;
.super Ljava/lang/Object;
.source "WidgetCallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacz;


# direct methods
.method constructor <init>(Lacz;)V
    .locals 0
    .param p1, "this$0"    # Lacz;

    .prologue
    .line 67
    iput-object p1, p0, Lacz$1;->a:Lacz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v1, p0, Lacz$1;->a:Lacz;

    invoke-static {v1}, Lacz;->a(Lacz;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const-string/jumbo v1, "WidgetCallView"

    const-string/jumbo v2, "info : do diret call."

    invoke-static {v1, v2}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lacz$1;->a:Lacz;

    invoke-static {v1}, Lacz;->b(Lacz;)Lcom/iflytek/base/contacts/entities/ContactSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/base/contacts/entities/ContactSet;->getNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lacz$1;->a:Lacz;

    invoke-static {v1}, Lacz;->c(Lacz;)Lacp;

    move-result-object v1

    invoke-interface {v1}, Lacp;->getDialContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "call"

    iget-object v3, p0, Lacz$1;->a:Lacz;

    .line 77
    invoke-static {v3}, Lacz;->d(Lacz;)B

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 75
    invoke-static {v1, v2, v3, v4}, Labz;->a(Landroid/content/Context;Ljava/lang/String;B[Ljava/lang/Object;)V

    .line 79
    .end local v0    # "number":Ljava/lang/String;
    :cond_0
    return-void
.end method
