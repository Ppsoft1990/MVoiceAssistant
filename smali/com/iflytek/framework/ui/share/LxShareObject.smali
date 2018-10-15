.class public Lcom/iflytek/framework/ui/share/LxShareObject;
.super Ljava/lang/Object;
.source "LxShareObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/framework/ui/share/LxShareObject$Build;
    }
.end annotation


# static fields
.field public static final MODE_IMAGE:Ljava/lang/String; = "image"

.field public static final MODE_MUSIC:Ljava/lang/String; = "music"

.field public static final MODE_TEXT:Ljava/lang/String; = "text"

.field public static final MODE_WEBPAGE:Ljava/lang/String; = "webpage"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected mDes:Ljava/lang/String;

.field protected mImagePath:Ljava/lang/String;

.field protected mMusicUrl:Ljava/lang/String;

.field protected mTag:Ljava/lang/String;

.field protected mText:Ljava/lang/String;

.field protected mThumbPath:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mWebPageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
