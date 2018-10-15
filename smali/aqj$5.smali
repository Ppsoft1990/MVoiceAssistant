.class Laqj$5;
.super Ljava/lang/Object;
.source "MusicPlayerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laqj;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Laqj;


# direct methods
.method constructor <init>(Laqj;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Laqj;

    .prologue
    .line 784
    iput-object p1, p0, Laqj$5;->b:Laqj;

    iput-object p2, p0, Laqj$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 787
    iget-object v0, p0, Laqj$5;->b:Laqj;

    invoke-static {v0}, Laqj;->h(Laqj;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Laqj$5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 788
    return-void
.end method
