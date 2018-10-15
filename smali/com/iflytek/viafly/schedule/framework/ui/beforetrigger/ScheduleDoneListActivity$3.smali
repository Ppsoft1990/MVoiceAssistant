.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$3;
.super Ljava/lang/Object;
.source "ScheduleDoneListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$3;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$3;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDoneListActivity$3;->a:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 231
    return-void
.end method
