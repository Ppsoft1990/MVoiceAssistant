.class Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;
.super Ljava/lang/Object;
.source "ShareViewPagerAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnShareItemClick"
.end annotation


# instance fields
.field private mShareData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/framework/ui/share/LxShareObject$Build;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/framework/ui/share/LxShareObject$Build;>;"
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->mShareData:Ljava/util/List;

    .line 125
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->mShareData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->mShareData:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 132
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    if-nez v0, :cond_2

    .line 133
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    :cond_2
    const-string/jumbo v1, "more"

    iget-object v2, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$100(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$100(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lgq;->a(Landroid/content/Context;)Lgq;

    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lgq;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v2}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$200(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Lcom/iflytek/framework/ui/share/LxShareObject$Build;Lcom/iflytek/framework/ui/share/IShareResultListener;)Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 149
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$000(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$200(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter$OnShareItemClick;->this$0:Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;

    invoke-static {v1}, Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;->access$200(Lcom/iflytek/framework/ui/share/ShareViewPagerAdapter;)Lcom/iflytek/framework/ui/share/AbsShareResultListener;

    move-result-object v1

    iget-object v2, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    iget-object v3, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    iget-object v4, v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/framework/ui/share/AbsShareResultListener;->onClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
