.class Lcom/iflytek/viafly/browser/BrowserViewComponents$2;
.super Ljava/lang/Object;
.source "BrowserViewComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/browser/BrowserViewComponents;->viaflyShare(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/browser/BrowserViewComponents;

.field final synthetic val$isCutImage_boolean:Ljava/lang/String;

.field final synthetic val$shareText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/browser/BrowserViewComponents;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/browser/BrowserViewComponents;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;->this$0:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    iput-object p2, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;->val$shareText:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;->val$isCutImage_boolean:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;->this$0:Lcom/iflytek/viafly/browser/BrowserViewComponents;

    iget-object v1, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;->val$shareText:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/viafly/browser/BrowserViewComponents$2;->val$isCutImage_boolean:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/browser/BrowserViewComponents;->shareToOther(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method
