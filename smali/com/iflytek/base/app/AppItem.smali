.class public Lcom/iflytek/base/app/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ltf;


# static fields
.field private static final serialVersionUID:J = 0x2dc0d56482dddf1cL


# instance fields
.field private mAppClassName:Ljava/lang/String;

.field private transient mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field private mConvertAppName:Ljava/lang/String;

.field private mDistance:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mAppName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/iflytek/base/app/AppItem;->mPackageName:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mAppClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getConvertAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mConvertAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/iflytek/base/app/AppItem;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appClassName"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mAppClassName:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 79
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mAppName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setConvertAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "convertAppName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mConvertAppName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mDistance:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mPackageName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iflytek/base/app/AppItem;->mVersionName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AppItem [mAppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/app/AppItem;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mConvertAppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/app/AppItem;->mConvertAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/app/AppItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVersionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/base/app/AppItem;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
