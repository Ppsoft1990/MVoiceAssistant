.class public Lpe;
.super Ljava/lang/Object;
.source "PermissionToast.java"


# instance fields
.field private a:Lcom/iflytek/viafly/ui/InteractiveToast;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local p3, "unrationaleList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "PermissionToast"

    const-string/jumbo v1, "PermissionToast<init>"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iput-object p1, p0, Lpe;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lpe;->c:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lpe;->d:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic a(Lpe;)V
    .locals 0
    .param p0, "x0"    # Lpe;

    .prologue
    .line 20
    invoke-direct {p0}, Lpe;->d()V

    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lpe;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 39
    const-string/jumbo v1, "PermissionToast"

    const-string/jumbo v2, "showToast | context is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return v0

    .line 43
    :cond_0
    iget-object v1, p0, Lpe;->c:Ljava/util/List;

    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lpe;->d:Ljava/util/List;

    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string/jumbo v1, "PermissionToast"

    const-string/jumbo v2, "showToast | deniedList and  unrationaleList is empty"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "PermissionToast"

    const-string/jumbo v1, "handleClickBtn"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lpe;->b()V

    .line 94
    iget-object v0, p0, Lpe;->b:Landroid/content/Context;

    iget-object v1, p0, Lpe;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgq;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lpe;->e()V

    .line 97
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    .line 100
    const-string/jumbo v3, "PermissionToast"

    const-string/jumbo v4, "startTip"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v3, p0, Lpe;->c:Ljava/util/List;

    invoke-static {v3}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    iget-object v3, p0, Lpe;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_0
    iget-object v3, p0, Lpe;->d:Ljava/util/List;

    invoke-static {v3}, Lazz;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    iget-object v3, p0, Lpe;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_1
    invoke-static {v0}, Lpc;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "permissionTip":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "1\u3001\u8fdb\u5165\u6743\u9650|2\u3001\u5f00\u542f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u6743\u9650"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "tips":Ljava/lang/String;
    iget-object v3, p0, Lpe;->b:Landroid/content/Context;

    const-wide/16 v4, 0x3e8

    invoke-static {v3, v2, v4, v5}, Lpd;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 115
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 51
    invoke-direct {p0}, Lpe;->c()Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v5, p0, Lpe;->c:Ljava/util/List;

    invoke-static {v5}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 57
    iget-object v5, p0, Lpe;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1
    iget-object v5, p0, Lpe;->d:Ljava/util/List;

    invoke-static {v5}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    iget-object v5, p0, Lpe;->d:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_2
    :try_start_0
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;-><init>()V

    .line 66
    .local v0, "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    invoke-static {v2}, Lpc;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "permissionTip":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8be5\u529f\u80fd\u9700\u8981 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u6743\u9650\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "taostTip":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 69
    const-string/jumbo v5, "\u53bb\u5f00\u542f"

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 71
    new-instance v5, Lpe$1;

    invoke-direct {v5, p0}, Lpe$1;-><init>(Lpe;)V

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 77
    iget-object v5, p0, Lpe;->b:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;)Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v5

    iput-object v5, p0, Lpe;->a:Lcom/iflytek/viafly/ui/InteractiveToast;

    .line 78
    const-string/jumbo v5, "PermissionToast"

    const-string/jumbo v6, "show"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .end local v3    # "permissionTip":Ljava/lang/String;
    .end local v4    # "taostTip":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PermissionToast"

    const-string/jumbo v6, "show error"

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(III)V
    .locals 7
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Lpe;->c()Z

    move-result v5

    if-nez v5, :cond_0

    .line 150
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    iget-object v5, p0, Lpe;->c:Ljava/util/List;

    invoke-static {v5}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    iget-object v5, p0, Lpe;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_1
    iget-object v5, p0, Lpe;->d:Ljava/util/List;

    invoke-static {v5}, Lazz;->a(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 128
    iget-object v5, p0, Lpe;->d:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    :cond_2
    :try_start_0
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;-><init>()V

    .line 133
    .local v0, "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    invoke-static {v2}, Lpc;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "permissionTip":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u8be5\u529f\u80fd\u9700\u8981 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u6743\u9650\uff0c"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "taostTip":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 136
    const-string/jumbo v5, "\u53bb\u5f00\u542f"

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 138
    new-instance v5, Lpe$2;

    invoke-direct {v5, p0}, Lpe$2;-><init>(Lpe;)V

    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 145
    iget-object v5, p0, Lpe;->b:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v0, v5, p1, p2, p3}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;III)Lcom/iflytek/viafly/ui/InteractiveToast;

    move-result-object v5

    iput-object v5, p0, Lpe;->a:Lcom/iflytek/viafly/ui/InteractiveToast;

    .line 146
    const-string/jumbo v5, "PermissionToast"

    const-string/jumbo v6, "show"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    .end local v0    # "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    .end local v3    # "permissionTip":Ljava/lang/String;
    .end local v4    # "taostTip":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "PermissionToast"

    const-string/jumbo v6, "show error"

    invoke-static {v5, v6, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lpe;->a:Lcom/iflytek/viafly/ui/InteractiveToast;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lpe;->a:Lcom/iflytek/viafly/ui/InteractiveToast;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/InteractiveToast;->dismiss()V

    .line 87
    const-string/jumbo v0, "PermissionToast"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    return-void
.end method
