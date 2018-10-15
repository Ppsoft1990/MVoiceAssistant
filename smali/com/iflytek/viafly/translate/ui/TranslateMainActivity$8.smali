.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lpa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1572
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "enable"

    invoke-virtual {v0, v1}, Lxq;->b(Ljava/lang/String;)V

    .line 1575
    :cond_0
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onGranted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->a:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->a(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;Ljava/lang/Runnable;)V

    .line 1577
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1581
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v0

    const-string/jumbo v1, "disable"

    invoke-virtual {v0, v1}, Lxq;->b(Ljava/lang/String;)V

    .line 1584
    :cond_0
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onDenied"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$8;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 1586
    return-void
.end method
