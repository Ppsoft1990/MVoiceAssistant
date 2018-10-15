.class public Lcom/iflytek/framework/ui/share/LxShareObject$Build;
.super Ljava/lang/Object;
.source "LxShareObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/ui/share/LxShareObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# instance fields
.field protected mClassName:Ljava/lang/String;

.field protected mDes:Ljava/lang/String;

.field protected mImagePath:Ljava/lang/String;

.field protected mMode:Ljava/lang/String;

.field protected mModule:Ljava/lang/String;

.field protected mMusicUrl:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mShareId:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field protected mText:Ljava/lang/String;

.field protected mThumbPath:Ljava/lang/String;

.field protected mTimeline:Z

.field protected mTitle:Ljava/lang/String;

.field protected mWebPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeActivityInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->clone()Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    .line 125
    invoke-virtual {v0, p2}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->className(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public changePackageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->clone()Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public changeTimeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 2
    .param p1, "timeline"    # Z

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "build":Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->clone()Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p1}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->timeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public className(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mClassName:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public clone()Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->clone()Lcom/iflytek/framework/ui/share/LxShareObject$Build;

    move-result-object v0

    return-object v0
.end method

.method public des(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mDes:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public imagePath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mImagePath:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public mode(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMode:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public module(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mModule:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public musicUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "musicUrl"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mMusicUrl:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public packageName(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mPackageName:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public shareId(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "shareId"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mShareId:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTag:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mText:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public thumbPath(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "thumbPath"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mThumbPath:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public timeline(Z)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "timeline"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTimeline:Z

    .line 90
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mTitle:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public webPageUrl(Ljava/lang/String;)Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    .locals 0
    .param p1, "webPageUrl"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/iflytek/framework/ui/share/LxShareObject$Build;->mWebPageUrl:Ljava/lang/String;

    .line 54
    return-object p0
.end method
