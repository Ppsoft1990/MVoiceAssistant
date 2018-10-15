.class Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;
.super Ljava/lang/Object;
.source "TranslateMainActivity.java"

# interfaces
.implements Lcom/iflytek/viafly/translate/ui/TranslateEditLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->q(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Layd;

    move-result-object v0

    const-string/jumbo v1, "translation"

    const-string/jumbo v2, "input"

    invoke-virtual {v0, v1, p1, v2}, Layd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity$17;->a:Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;->d(Lcom/iflytek/viafly/translate/ui/TranslateMainActivity;)Laxr;

    move-result-object v1

    invoke-static {}, Laxp;->a()Lcom/iflytek/viafly/translate/TranslateMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Laxr;->a(Lcom/iflytek/viafly/translate/TranslateMode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Laxr;->a(Z)V

    .line 943
    :cond_0
    return-void
.end method
