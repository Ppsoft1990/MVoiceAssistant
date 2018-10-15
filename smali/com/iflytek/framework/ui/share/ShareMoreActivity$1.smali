.class Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;
.super Ljava/lang/Object;
.source "ShareMoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/ui/share/ShareMoreActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

.field final synthetic val$indicator:Lcom/iflytek/viafly/ui/CirclePageIndicator;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/ui/share/ShareMoreActivity;Lcom/iflytek/viafly/ui/CirclePageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->val$indicator:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 102
    sput-boolean v2, Lazu;->a:Z

    .line 103
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v2, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v2}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$100(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 111
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v2}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v3}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$200(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->changeActivityInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v4}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$000(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_3

    .line 114
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->val$indicator:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setVisibility(I)V

    .line 118
    :goto_2
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->this$0:Lcom/iflytek/framework/ui/share/ShareMoreActivity;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareMoreActivity;->access$300(Lcom/iflytek/framework/ui/share/ShareMoreActivity;)Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareMoreActivity$1;->val$indicator:Lcom/iflytek/viafly/ui/CirclePageIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/ui/CirclePageIndicator;->setVisibility(I)V

    goto :goto_2
.end method
