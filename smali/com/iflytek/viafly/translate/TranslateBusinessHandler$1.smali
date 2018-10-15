.class Lcom/iflytek/viafly/translate/TranslateBusinessHandler$1;
.super Ljava/lang/Object;
.source "TranslateBusinessHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->onTtsPlayComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/translate/TranslateBusinessHandler;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/translate/TranslateBusinessHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler$1;->a:Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler$1;->a:Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    invoke-static {v0}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->access$000(Lcom/iflytek/viafly/translate/TranslateBusinessHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/translate/TranslateBusinessHandler$1;->a:Lcom/iflytek/viafly/translate/TranslateBusinessHandler;

    invoke-static {v1}, Lcom/iflytek/viafly/translate/TranslateBusinessHandler;->access$100(Lcom/iflytek/viafly/translate/TranslateBusinessHandler;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    return-void
.end method
