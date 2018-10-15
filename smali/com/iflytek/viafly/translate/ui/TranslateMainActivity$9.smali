.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lpg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->b(Ljava/lang/Runnable;)V
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
    .line 1590
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Ljava/util/List;)V
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
    .line 1600
    .local p1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p2, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onDenied"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;->b:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0, p1, p2}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    .line 1602
    return-void
.end method

.method public onGranted(Ljava/util/List;)V
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
    .line 1593
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const-string/jumbo v0, "TranslateMainActivity"

    const-string/jumbo v1, "onGranted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$9;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1596
    return-void
.end method
