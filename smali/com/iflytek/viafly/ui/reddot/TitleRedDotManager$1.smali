.class Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;
.super Ljava/util/TimerTask;
.source "TitleRedDotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->initDelay(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

.field final synthetic val$listener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;->this$0:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;->val$listener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;->this$0:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$1;->val$listener:Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager;->init(Lcom/iflytek/viafly/ui/reddot/TitleRedDotManager$OnUpdateRedDotListener;)V

    .line 96
    return-void
.end method
