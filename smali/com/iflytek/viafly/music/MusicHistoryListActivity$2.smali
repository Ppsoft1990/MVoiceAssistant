.class Lcom/iflytek/viafly/music/MusicHistoryListActivity$2;
.super Ljava/lang/Object;
.source "MusicHistoryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/music/MusicHistoryListActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/music/MusicHistoryListActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$2;->b:Lcom/iflytek/viafly/music/MusicHistoryListActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/iflytek/viafly/music/MusicHistoryListActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 172
    return-void
.end method
