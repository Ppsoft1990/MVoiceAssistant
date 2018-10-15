.class public final Lcom/iflytek/base/clipboard/ClipboardManager;
.super Ljava/lang/Object;
.source "ClipboardManager.java"

# interfaces
.implements Lcom/iflytek/base/clipboard/IClipboardManager;


# static fields
.field private static mInstance:Lcom/iflytek/base/clipboard/ClipboardManager;


# instance fields
.field private mClipboardManager:Lcom/iflytek/base/clipboard/IClipboardManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lhl;->k()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 22
    new-instance v0, Lcom/iflytek/base/clipboard/ClipboardSDK0_11;

    invoke-direct {v0, p1}, Lcom/iflytek/base/clipboard/ClipboardSDK0_11;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardManager;->mClipboardManager:Lcom/iflytek/base/clipboard/IClipboardManager;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/iflytek/base/clipboard/ClipboardSDK11_;

    invoke-direct {v0, p1}, Lcom/iflytek/base/clipboard/ClipboardSDK11_;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardManager;->mClipboardManager:Lcom/iflytek/base/clipboard/IClipboardManager;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/iflytek/base/clipboard/ClipboardManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/iflytek/base/clipboard/ClipboardManager;->mInstance:Lcom/iflytek/base/clipboard/ClipboardManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/iflytek/base/clipboard/ClipboardManager;

    invoke-direct {v0, p0}, Lcom/iflytek/base/clipboard/ClipboardManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/base/clipboard/ClipboardManager;->mInstance:Lcom/iflytek/base/clipboard/ClipboardManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/iflytek/base/clipboard/ClipboardManager;->mInstance:Lcom/iflytek/base/clipboard/ClipboardManager;

    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardManager;->mClipboardManager:Lcom/iflytek/base/clipboard/IClipboardManager;

    invoke-interface {v0, p1}, Lcom/iflytek/base/clipboard/IClipboardManager;->copy(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public paste()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/iflytek/base/clipboard/ClipboardManager;->mClipboardManager:Lcom/iflytek/base/clipboard/IClipboardManager;

    invoke-interface {v0}, Lcom/iflytek/base/clipboard/IClipboardManager;->paste()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
