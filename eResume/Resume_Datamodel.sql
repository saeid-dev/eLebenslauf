
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/18/2019 16:13:44
-- Generated from EDMX file: C:\Users\Saman\source\repos\eResume\eResume\SampleDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [eLebenslauf];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AuthorEducation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EducationSet] DROP CONSTRAINT [FK_AuthorEducation];
GO
IF OBJECT_ID(N'[dbo].[FK_DegreeEducation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EducationSet] DROP CONSTRAINT [FK_DegreeEducation];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorArticle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ArticleSet] DROP CONSTRAINT [FK_AuthorArticle];
GO
IF OBJECT_ID(N'[dbo].[FK_ArticleComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_ArticleComment];
GO
IF OBJECT_ID(N'[dbo].[FK_CommentComment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CommentSet] DROP CONSTRAINT [FK_CommentComment];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorCertificate]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CertificateSet] DROP CONSTRAINT [FK_AuthorCertificate];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillSet] DROP CONSTRAINT [FK_AuthorSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorJob]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobSet] DROP CONSTRAINT [FK_AuthorJob];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployerJob]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobSet] DROP CONSTRAINT [FK_EmployerJob];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorHonor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HonorSet] DROP CONSTRAINT [FK_AuthorHonor];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorExperience]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ExperienceSet] DROP CONSTRAINT [FK_AuthorExperience];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorInterest]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InterestSet] DROP CONSTRAINT [FK_AuthorInterest];
GO
IF OBJECT_ID(N'[dbo].[FK_ExpertiseSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillSet] DROP CONSTRAINT [FK_ExpertiseSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_SkillLevelSkill]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkillSet] DROP CONSTRAINT [FK_SkillLevelSkill];
GO
IF OBJECT_ID(N'[dbo].[FK_ArticleTag]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TagSet] DROP CONSTRAINT [FK_ArticleTag];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[DegreeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DegreeSet];
GO
IF OBJECT_ID(N'[dbo].[EducationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EducationSet];
GO
IF OBJECT_ID(N'[dbo].[AuthorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AuthorSet];
GO
IF OBJECT_ID(N'[dbo].[ArticleSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ArticleSet];
GO
IF OBJECT_ID(N'[dbo].[TagSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TagSet];
GO
IF OBJECT_ID(N'[dbo].[CommentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CommentSet];
GO
IF OBJECT_ID(N'[dbo].[CertificateSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CertificateSet];
GO
IF OBJECT_ID(N'[dbo].[SkillSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkillSet];
GO
IF OBJECT_ID(N'[dbo].[JobSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobSet];
GO
IF OBJECT_ID(N'[dbo].[EmployerSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmployerSet];
GO
IF OBJECT_ID(N'[dbo].[HonorSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HonorSet];
GO
IF OBJECT_ID(N'[dbo].[ExperienceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExperienceSet];
GO
IF OBJECT_ID(N'[dbo].[InterestSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InterestSet];
GO
IF OBJECT_ID(N'[dbo].[ExpertiseSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExpertiseSet];
GO
IF OBJECT_ID(N'[dbo].[SkillLevelSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkillLevelSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DegreeSet'
CREATE TABLE [dbo].[DegreeSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EducationSet'
CREATE TABLE [dbo].[EducationSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [FieldOfStudy] nvarchar(max)  NOT NULL,
    [Location] nvarchar(max)  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [Grade] nvarchar(max)  NULL,
    [Dissertation] nvarchar(max)  NULL,
    [ShortDesc] nvarchar(max)  NULL,
    [AutorID] int  NOT NULL,
    [DegreeID] int  NOT NULL,
    [Author_ID] int  NOT NULL,
    [Degree_ID] int  NOT NULL
);
GO

-- Creating table 'AuthorSet'
CREATE TABLE [dbo].[AuthorSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Family] nvarchar(max)  NOT NULL,
    [BirthDate] datetime  NULL,
    [Residency] nvarchar(max)  NULL,
    [Phone] nvarchar(max)  NULL,
    [Cellphone] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NULL
);
GO

-- Creating table 'ArticleSet'
CREATE TABLE [dbo].[ArticleSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL,
    [ShortDesc] nvarchar(max)  NULL,
    [PublishDate] datetime  NOT NULL,
    [Visible] nvarchar(max)  NULL,
    [IsArchived] bit  NOT NULL,
    [AuthorID] int  NOT NULL,
    [Author_ID] int  NOT NULL
);
GO

-- Creating table 'TagSet'
CREATE TABLE [dbo].[TagSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL,
    [ArticleID] int  NOT NULL,
    [Article_ID] int  NOT NULL
);
GO

-- Creating table 'CommentSet'
CREATE TABLE [dbo].[CommentSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Sender] nvarchar(max)  NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [Visible] nvarchar(max)  NULL,
    [ArticleID] int  NOT NULL,
    [CommentID] int  NOT NULL,
    [Article_ID] int  NOT NULL,
    [SuperComment_ID] int  NOT NULL
);
GO

-- Creating table 'CertificateSet'
CREATE TABLE [dbo].[CertificateSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL,
    [Grade] nvarchar(max)  NULL,
    [AuthorID] int  NOT NULL,
    [Author_ID] int  NOT NULL
);
GO

-- Creating table 'SkillSet'
CREATE TABLE [dbo].[SkillSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Value] nvarchar(max)  NOT NULL,
    [ExpertiselD] int  NOT NULL,
    [LevelID] int  NOT NULL,
    [AuthorID] int  NOT NULL,
    [Author_ID] int  NOT NULL,
    [Expertise_ID] int  NOT NULL,
    [Level_ID] int  NOT NULL
);
GO

-- Creating table 'JobSet'
CREATE TABLE [dbo].[JobSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Position] nvarchar(max)  NOT NULL,
    [ShortDesc] nvarchar(max)  NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [AuthorID] int  NOT NULL,
    [EmployerID] int  NOT NULL,
    [Author_ID] int  NOT NULL,
    [Employer_Id] int  NOT NULL
);
GO

-- Creating table 'EmployerSet'
CREATE TABLE [dbo].[EmployerSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'HonorSet'
CREATE TABLE [dbo].[HonorSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [GainDate] datetime  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [AuthorID] nvarchar(max)  NOT NULL,
    [Author_ID] int  NOT NULL
);
GO

-- Creating table 'ExperienceSet'
CREATE TABLE [dbo].[ExperienceSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL,
    [Subject] nvarchar(max)  NULL,
    [ShortDesc] nvarchar(max)  NULL,
    [AuthorID] nvarchar(max)  NOT NULL,
    [Author_ID] int  NOT NULL
);
GO

-- Creating table 'InterestSet'
CREATE TABLE [dbo].[InterestSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [AuthorID] int  NOT NULL,
    [Author_ID] int  NOT NULL
);
GO

-- Creating table 'ExpertiseSet'
CREATE TABLE [dbo].[ExpertiseSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SkillLevelSet'
CREATE TABLE [dbo].[SkillLevelSet] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Titel] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'DegreeSet'
ALTER TABLE [dbo].[DegreeSet]
ADD CONSTRAINT [PK_DegreeSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'EducationSet'
ALTER TABLE [dbo].[EducationSet]
ADD CONSTRAINT [PK_EducationSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'AuthorSet'
ALTER TABLE [dbo].[AuthorSet]
ADD CONSTRAINT [PK_AuthorSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ArticleSet'
ALTER TABLE [dbo].[ArticleSet]
ADD CONSTRAINT [PK_ArticleSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TagSet'
ALTER TABLE [dbo].[TagSet]
ADD CONSTRAINT [PK_TagSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [PK_CommentSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CertificateSet'
ALTER TABLE [dbo].[CertificateSet]
ADD CONSTRAINT [PK_CertificateSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'SkillSet'
ALTER TABLE [dbo].[SkillSet]
ADD CONSTRAINT [PK_SkillSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'JobSet'
ALTER TABLE [dbo].[JobSet]
ADD CONSTRAINT [PK_JobSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'EmployerSet'
ALTER TABLE [dbo].[EmployerSet]
ADD CONSTRAINT [PK_EmployerSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'HonorSet'
ALTER TABLE [dbo].[HonorSet]
ADD CONSTRAINT [PK_HonorSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ExperienceSet'
ALTER TABLE [dbo].[ExperienceSet]
ADD CONSTRAINT [PK_ExperienceSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'InterestSet'
ALTER TABLE [dbo].[InterestSet]
ADD CONSTRAINT [PK_InterestSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'ExpertiseSet'
ALTER TABLE [dbo].[ExpertiseSet]
ADD CONSTRAINT [PK_ExpertiseSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'SkillLevelSet'
ALTER TABLE [dbo].[SkillLevelSet]
ADD CONSTRAINT [PK_SkillLevelSet]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Author_ID] in table 'EducationSet'
ALTER TABLE [dbo].[EducationSet]
ADD CONSTRAINT [FK_AuthorEducation]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorEducation'
CREATE INDEX [IX_FK_AuthorEducation]
ON [dbo].[EducationSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Degree_ID] in table 'EducationSet'
ALTER TABLE [dbo].[EducationSet]
ADD CONSTRAINT [FK_DegreeEducation]
    FOREIGN KEY ([Degree_ID])
    REFERENCES [dbo].[DegreeSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DegreeEducation'
CREATE INDEX [IX_FK_DegreeEducation]
ON [dbo].[EducationSet]
    ([Degree_ID]);
GO

-- Creating foreign key on [Author_ID] in table 'ArticleSet'
ALTER TABLE [dbo].[ArticleSet]
ADD CONSTRAINT [FK_AuthorArticle]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorArticle'
CREATE INDEX [IX_FK_AuthorArticle]
ON [dbo].[ArticleSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Article_ID] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_ArticleComment]
    FOREIGN KEY ([Article_ID])
    REFERENCES [dbo].[ArticleSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArticleComment'
CREATE INDEX [IX_FK_ArticleComment]
ON [dbo].[CommentSet]
    ([Article_ID]);
GO

-- Creating foreign key on [SuperComment_ID] in table 'CommentSet'
ALTER TABLE [dbo].[CommentSet]
ADD CONSTRAINT [FK_CommentComment]
    FOREIGN KEY ([SuperComment_ID])
    REFERENCES [dbo].[CommentSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CommentComment'
CREATE INDEX [IX_FK_CommentComment]
ON [dbo].[CommentSet]
    ([SuperComment_ID]);
GO

-- Creating foreign key on [Author_ID] in table 'CertificateSet'
ALTER TABLE [dbo].[CertificateSet]
ADD CONSTRAINT [FK_AuthorCertificate]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorCertificate'
CREATE INDEX [IX_FK_AuthorCertificate]
ON [dbo].[CertificateSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Author_ID] in table 'SkillSet'
ALTER TABLE [dbo].[SkillSet]
ADD CONSTRAINT [FK_AuthorSkill]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorSkill'
CREATE INDEX [IX_FK_AuthorSkill]
ON [dbo].[SkillSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Author_ID] in table 'JobSet'
ALTER TABLE [dbo].[JobSet]
ADD CONSTRAINT [FK_AuthorJob]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorJob'
CREATE INDEX [IX_FK_AuthorJob]
ON [dbo].[JobSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Employer_Id] in table 'JobSet'
ALTER TABLE [dbo].[JobSet]
ADD CONSTRAINT [FK_EmployerJob]
    FOREIGN KEY ([Employer_Id])
    REFERENCES [dbo].[EmployerSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployerJob'
CREATE INDEX [IX_FK_EmployerJob]
ON [dbo].[JobSet]
    ([Employer_Id]);
GO

-- Creating foreign key on [Author_ID] in table 'HonorSet'
ALTER TABLE [dbo].[HonorSet]
ADD CONSTRAINT [FK_AuthorHonor]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorHonor'
CREATE INDEX [IX_FK_AuthorHonor]
ON [dbo].[HonorSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Author_ID] in table 'ExperienceSet'
ALTER TABLE [dbo].[ExperienceSet]
ADD CONSTRAINT [FK_AuthorExperience]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorExperience'
CREATE INDEX [IX_FK_AuthorExperience]
ON [dbo].[ExperienceSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Author_ID] in table 'InterestSet'
ALTER TABLE [dbo].[InterestSet]
ADD CONSTRAINT [FK_AuthorInterest]
    FOREIGN KEY ([Author_ID])
    REFERENCES [dbo].[AuthorSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorInterest'
CREATE INDEX [IX_FK_AuthorInterest]
ON [dbo].[InterestSet]
    ([Author_ID]);
GO

-- Creating foreign key on [Expertise_ID] in table 'SkillSet'
ALTER TABLE [dbo].[SkillSet]
ADD CONSTRAINT [FK_ExpertiseSkill]
    FOREIGN KEY ([Expertise_ID])
    REFERENCES [dbo].[ExpertiseSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExpertiseSkill'
CREATE INDEX [IX_FK_ExpertiseSkill]
ON [dbo].[SkillSet]
    ([Expertise_ID]);
GO

-- Creating foreign key on [Level_ID] in table 'SkillSet'
ALTER TABLE [dbo].[SkillSet]
ADD CONSTRAINT [FK_SkillLevelSkill]
    FOREIGN KEY ([Level_ID])
    REFERENCES [dbo].[SkillLevelSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SkillLevelSkill'
CREATE INDEX [IX_FK_SkillLevelSkill]
ON [dbo].[SkillSet]
    ([Level_ID]);
GO

-- Creating foreign key on [Article_ID] in table 'TagSet'
ALTER TABLE [dbo].[TagSet]
ADD CONSTRAINT [FK_ArticleTag]
    FOREIGN KEY ([Article_ID])
    REFERENCES [dbo].[ArticleSet]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArticleTag'
CREATE INDEX [IX_FK_ArticleTag]
ON [dbo].[TagSet]
    ([Article_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------