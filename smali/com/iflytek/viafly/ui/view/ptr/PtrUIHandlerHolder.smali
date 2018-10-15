.class Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;


# instance fields
.field private mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

.field private mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static addHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)V
    .locals 3
    .param p0, "head"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    .param p1, "handler"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    if-eqz p0, :cond_0

    .line 37
    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-nez v2, :cond_2

    .line 38
    iput-object p1, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    goto :goto_0

    .line 42
    :cond_2
    move-object v0, p0

    .line 46
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :goto_1
    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->contains(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    if-nez v2, :cond_3

    .line 54
    new-instance v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-direct {v1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;-><init>()V

    .line 55
    .local v1, "newHolder":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    iput-object p1, v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    .line 56
    iput-object v1, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    goto :goto_0

    .line 43
    .end local v1    # "newHolder":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_3
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    goto :goto_1
.end method

.method private contains(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;-><init>()V

    return-object v0
.end method

.method private getHandler()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    return-object v0
.end method

.method public static removeHandler(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    .locals 4
    .param p0, "head"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    .param p1, "handler"    # Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    .prologue
    const/4 v3, 0x0

    .line 64
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-nez v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-object p0

    .line 68
    :cond_1
    move-object v0, p0

    .line 69
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    const/4 v1, 0x0

    .line 74
    .local v1, "pre":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_2
    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->contains(Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    if-nez v1, :cond_3

    .line 79
    iget-object p0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .line 80
    iput-object v3, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .line 82
    move-object v0, p0

    .line 94
    :goto_1
    if-nez v0, :cond_2

    .line 96
    if-nez p0, :cond_0

    .line 97
    new-instance p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .end local p0    # "head":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;-><init>()V

    .restart local p0    # "head":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    goto :goto_0

    .line 85
    :cond_3
    iget-object v2, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    iput-object v2, v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .line 86
    iput-object v3, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    .line 87
    iget-object v0, v1, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    goto :goto_1

    .line 90
    :cond_4
    move-object v1, v0

    .line 91
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    goto :goto_1
.end method


# virtual methods
.method public hasHandler()Z
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mHandler:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUIPositionChange(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;ZBLcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V
    .locals 2
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;

    .prologue
    .line 151
    move-object v0, p0

    .line 153
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->getHandler()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    move-result-object v1

    .line 154
    .local v1, "handler":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;->onUIPositionChange(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;ZBLcom/iflytek/viafly/ui/view/ptr/indicator/PtrIndicator;)V

    .line 157
    :cond_1
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 158
    return-void
.end method

.method public onUIRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 129
    move-object v0, p0

    .line 131
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->getHandler()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    move-result-object v1

    .line 132
    .local v1, "handler":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;->onUIRefreshBegin(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 135
    :cond_1
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 136
    return-void
.end method

.method public onUIRefreshComplete(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Z)V
    .locals 2
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;
    .param p2, "isHeader"    # Z

    .prologue
    .line 140
    move-object v0, p0

    .line 142
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->getHandler()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    move-result-object v1

    .line 143
    .local v1, "handler":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v1, p1, p2}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;->onUIRefreshComplete(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;Z)V

    .line 146
    :cond_1
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 147
    return-void
.end method

.method public onUIRefreshPrepare(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->hasHandler()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    move-object v0, p0

    .line 120
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_1
    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->getHandler()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    move-result-object v1

    .line 121
    .local v1, "handler":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;
    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;->onUIRefreshPrepare(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 124
    :cond_2
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public onUIReset(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V
    .locals 2
    .param p1, "frame"    # Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;

    .prologue
    .line 104
    move-object v0, p0

    .line 106
    .local v0, "current":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;
    :cond_0
    invoke-direct {v0}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->getHandler()Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;

    move-result-object v1

    .line 107
    .local v1, "handler":Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;
    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1, p1}, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandler;->onUIReset(Lcom/iflytek/viafly/ui/view/ptr/PtrFrameLayout;)V

    .line 110
    :cond_1
    iget-object v0, v0, Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;->mNext:Lcom/iflytek/viafly/ui/view/ptr/PtrUIHandlerHolder;

    if-nez v0, :cond_0

    .line 111
    return-void
.end method
