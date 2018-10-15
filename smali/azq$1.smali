.class final Lazq$1;
.super Ljava/lang/Object;
.source "NotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazq;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lazq$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lazq$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 190
    :try_start_0
    iget-object v2, p0, Lazq$1;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lazq$1;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 192
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    iget-object v2, p0, Lazq$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lod;->a(Landroid/content/Context;)Lod;

    move-result-object v2

    .line 193
    invoke-virtual {v2, v1}, Lod;->playRingToneFromAssert(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "NotificationHelper"

    const-string/jumbo v3, "\u901a\u77e5\u680f\u64ad\u653e\u63d0\u793a\u8bed\u51fa\u9519"

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
