.class Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient$1;->this$1:Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient;

    iput-object p2, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/mmp/core/webcore/BrowserCore$IFlyWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    return-void
.end method
