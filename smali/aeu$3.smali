.class Laeu$3;
.super Laeh;
.source "ContactCreateItemViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;I)V
    .locals 0
    .param p1, "this$0"    # Laeu;
    .param p2, "interval"    # I

    .prologue
    .line 191
    iput-object p1, p0, Laeu$3;->a:Laeu;

    invoke-direct {p0, p2}, Laeh;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v0, p0, Laeu$3;->a:Laeu;

    invoke-static {v0}, Laeu;->c(Laeu;)Lada;

    move-result-object v0

    const-string/jumbo v1, "contactCancel"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lada;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 195
    iget-object v0, p0, Laeu$3;->a:Laeu;

    invoke-static {v0}, Laeu;->c(Laeu;)Lada;

    move-result-object v0

    invoke-virtual {v0}, Lada;->a()V

    .line 197
    invoke-static {v3}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .line 198
    return-void
.end method
