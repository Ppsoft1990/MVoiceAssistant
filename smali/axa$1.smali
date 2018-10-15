.class Laxa$1;
.super Ljava/lang/Object;
.source "ScheduleToneSetHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laxa;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laxa;


# direct methods
.method constructor <init>(Laxa;)V
    .locals 0
    .param p1, "this$0"    # Laxa;

    .prologue
    .line 56
    iput-object p1, p0, Laxa$1;->a:Laxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v4, "tonInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/tone/ListDataItem;>;"
    :try_start_0
    iget-object v5, p0, Laxa$1;->a:Laxa;

    invoke-static {v5}, Laxa;->a(Laxa;)Landroid/media/RingtoneManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 63
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 64
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const/4 v2, 0x0

    .line 67
    .local v2, "position":I
    :cond_0
    const/4 v5, 0x1

    .line 68
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "title":Ljava/lang/String;
    new-instance v5, Lcom/iflytek/viafly/schedule/tone/ListDataItem;

    invoke-direct {v5, v3, v2}, Lcom/iflytek/viafly/schedule/tone/ListDataItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    .end local v2    # "position":I
    .end local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Laxa$1;->a:Laxa;

    invoke-static {v5}, Laxa;->b(Laxa;)Laxa$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 76
    iget-object v5, p0, Laxa$1;->a:Laxa;

    invoke-static {v5}, Laxa;->b(Laxa;)Laxa$a;

    move-result-object v5

    invoke-interface {v5, v4}, Laxa$a;->a(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ScheduleToneSetHelper"

    const-string/jumbo v6, "getRingTones() error"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v5, p0, Laxa$1;->a:Laxa;

    invoke-static {v5}, Laxa;->b(Laxa;)Laxa$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 81
    iget-object v5, p0, Laxa$1;->a:Laxa;

    invoke-static {v5}, Laxa;->b(Laxa;)Laxa$a;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Laxa$a;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
