.class final Lcom/iflytek/framework/ui/share/ShareUtils$3;
.super Ljava/lang/Object;
.source "ShareUtils.java"

# interfaces
.implements Lcom/iflytek/framework/ui/share/ShareUtils$LoadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/ui/share/LxShareObject$Build;Landroid/content/Context;Lcom/iflytek/framework/ui/share/IShareResultListener;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 127
    iget-object v0, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$build:Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareUtils$3;->val$shareResultListener:Lcom/iflytek/framework/ui/share/IShareResultListener;

    invoke-static {v0, v1, v2}, Lcom/iflytek/framework/ui/share/ShareUtils;->access$000(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Z

    .line 128
    return-void
.end method
