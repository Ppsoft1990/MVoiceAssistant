.class Lcom/iflytek/base/clipboard/ClipboardSDK0_11;
.super Ljava/lang/Object;
.source "ClipboardSDK0_11.java"

# interfaces
.implements Lcom/iflytek/base/clipboard/IClipboardManager;


# instance fields
.field private mClipboardManager:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardSDK0_11;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 19
    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardSDK0_11;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public paste()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardSDK0_11;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
